pub use self::context::Process;
pub use rcore_process::*;
use crate::consts::{MAX_CPU_NUM, MAX_PROCESS_NUM};
use crate::arch::cpu;
use alloc::{boxed::Box, sync::Arc};
use log::*;

pub fn init() {
    // NOTE: max_time_slice <= 5 to ensure 'priority' test pass
    let scheduler = Box::new(scheduler::RRScheduler::new(5));
    let manager = Arc::new(ProcessManager::new(scheduler, MAX_PROCESS_NUM));

    unsafe {
        for cpu_id in 0..MAX_CPU_NUM {
            PROCESSORS[cpu_id].init(cpu_id, Process::new_init(), manager.clone());
        }
    }

    // Add idle threads
    extern fn idle(_arg: usize) -> ! {
        loop { cpu::halt(); }
    }
    use core::str::FromStr;
    let cores = usize::from_str(env!("SMP")).unwrap();
    for i in 0..cores {
        manager.add(Process::new_kernel(idle, i), 0);
    }
    crate::shell::run_user_shell();

    processor().manager().add(Process::new_kernel(crate::sync::test::philosopher_using_mutex, 0), 0);

    info!("process init end");
}

static PROCESSORS: [Processor; MAX_CPU_NUM] = [Processor::new(), Processor::new(), Processor::new(), Processor::new(), Processor::new(), Processor::new(), Processor::new(), Processor::new()];

/// Get current thread struct
///
/// FIXME: It's obviously unsafe to get &mut !
pub fn process() -> &'static mut Process {
    use core::mem::transmute;
    let (process, _): (&mut Process, *const ()) = unsafe {
        transmute(processor().context())
    };
    process
}


// Implement dependencies for std::thread

#[no_mangle]
pub fn processor() -> &'static Processor {
    &PROCESSORS[cpu::id()]
}

#[no_mangle]
pub fn new_kernel_context(entry: extern fn(usize) -> !, arg: usize) -> Box<Context> {
    Process::new_kernel(entry, arg)
}


pub mod context {
    use alloc::{boxed::Box, collections::BTreeMap, string::String, sync::Arc, vec::Vec};

    use log::*;
    use simple_filesystem::file::File;
    use spin::Mutex;
    use rcore_process::Context;
    use xmas_elf::{ElfFile, header, program::{Flags, Type}};

    use crate::arch::interrupt::{Context as ArchContext, TrapFrame};
    use crate::memory::{ByFrame, GlobalFrameAlloc, KernelStack, MemoryAttr, MemorySet};

    // TODO: avoid pub
    pub struct Process {
        pub arch: ArchContext,
        pub memory_set: MemorySet,
        pub kstack: KernelStack,
        pub files: BTreeMap<usize, Arc<Mutex<File>>>,
        pub cwd: String,
    }

    impl Context for Process {
        unsafe fn switch_to(&mut self, target: &mut Context) {
            use core::mem::transmute;
            let (target, _): (&mut Process, *const ()) = transmute(target);
            self.arch.switch(&mut target.arch);
        }
    }

    impl Process {
        pub unsafe fn new_init() -> Box<Context> {
            Box::new(Process {
                arch: ArchContext::null(),
                memory_set: MemorySet::new(),
                kstack: KernelStack::new(),
                files: BTreeMap::default(),
                cwd: String::new(),
            })
        }

        pub fn new_kernel(entry: extern fn(usize) -> !, arg: usize) -> Box<Context> {
            let memory_set = MemorySet::new();
            let kstack = KernelStack::new();
            Box::new(Process {
                arch: unsafe { ArchContext::new_kernel_thread(entry, arg, kstack.top(), memory_set.token()) },
                memory_set,
                kstack,
                files: BTreeMap::default(),
                cwd: String::new(),
            })
        }

        /// Make a new user thread from ELF data
        pub fn new_user<'a, Iter>(data: &[u8], args: Iter) -> Box<Process>
            where Iter: Iterator<Item=&'a str>
        {
            // Parse elf
            let elf = ElfFile::new(data).expect("failed to read elf");
            let is32 = match elf.header.pt2 {
                header::HeaderPt2::Header32(_) => true,
                header::HeaderPt2::Header64(_) => false,
            };

            match elf.header.pt2.type_().as_type() {
                header::Type::Executable => {},
                header::Type::SharedObject => {},
                _ => panic!("ELF is not executable or shared object"),
            }

            // Make page table
            let (mut memory_set, entry_addr) = memory_set_from(&elf);

            // User stack
            use crate::consts::{USER_STACK_OFFSET, USER_STACK_SIZE, USER32_STACK_OFFSET};

            let mut ustack_top = {
                let (ustack_buttom, ustack_top) = match is32 {
                    true => (USER32_STACK_OFFSET, USER32_STACK_OFFSET + USER_STACK_SIZE),
                    false => (USER_STACK_OFFSET, USER_STACK_OFFSET + USER_STACK_SIZE),
                };
                memory_set.push(ustack_buttom, ustack_top, ByFrame::new(MemoryAttr::default().user(), GlobalFrameAlloc), "user_stack");
                ustack_top
            };

            unsafe {
                memory_set.with(|| { ustack_top = push_args_at_stack(args, ustack_top) });
            }

            trace!("{:#x?}", memory_set);

            let kstack = KernelStack::new();

            Box::new(Process {
                arch: unsafe {
                    ArchContext::new_user_thread(
                        entry_addr, ustack_top, kstack.top(), is32, memory_set.token())
                },
                memory_set,
                kstack,
                files: BTreeMap::default(),
                cwd: String::new(),
            })
        }

        /// Fork
        pub fn fork(&self, tf: &TrapFrame) -> Box<Context> {
            info!("COME into fork!");
            // Clone memory set, make a new page table
            let memory_set = self.memory_set.clone();
            info!("finish mmset clone in fork!");

            // MMU:   copy data to the new space
            for area in memory_set.iter() {
                let data = Vec::<u8>::from(unsafe { area.as_slice() });
                unsafe {
                    memory_set.with(|| {
                        area.as_slice_mut().copy_from_slice(data.as_slice())
                    })
                }
            }

            info!("temporary copy data!");
            let kstack = KernelStack::new();

            Box::new(Process {
                arch: unsafe { ArchContext::new_fork(tf, kstack.top(), memory_set.token()) },
                memory_set,
                kstack,
                files: BTreeMap::default(),
                cwd: String::new(),
            })
        }
    }

    /// Push a slice at the stack. Return the new sp.
    unsafe fn push_slice<T: Copy>(mut sp: usize, vs: &[T]) -> usize {
        use core::{mem::{size_of, align_of}, slice};
        sp -= vs.len() * size_of::<T>();
        sp -= sp % align_of::<T>();
        slice::from_raw_parts_mut(sp as *mut T, vs.len())
            .copy_from_slice(vs);
        sp
    }

    unsafe fn push_args_at_stack<'a, Iter>(args: Iter, stack_top: usize) -> usize
        where Iter: Iterator<Item=&'a str>
    {
        let mut sp = stack_top;
        let mut argv = Vec::new();
        for arg in args {
            sp = push_slice(sp, &[0u8]);
            sp = push_slice(sp, arg.as_bytes());
            argv.push(sp);
        }
        sp = push_slice(sp, argv.as_slice());
        sp = push_slice(sp, &[argv.len()]);
        sp
    }


    /// Generate a MemorySet according to the ELF file.
/// Also return the real entry point address.
    fn memory_set_from(elf: &ElfFile<'_>) -> (MemorySet, usize) {
        debug!("come in to memory_set_from");
        let mut ms = MemorySet::new();
        let entry = elf.header.pt2.entry_point() as usize;

        for ph in elf.program_iter() {
            if ph.get_type() != Ok(Type::Load) {
                continue;
            }
            let virt_addr = ph.virtual_addr() as usize;
            let offset = ph.offset() as usize;
            let file_size = ph.file_size() as usize;
            let mem_size = ph.mem_size() as usize;

            // Get target slice
            let target = {
                ms.push(virt_addr, virt_addr + mem_size, ByFrame::new(memory_attr_from(ph.flags()), GlobalFrameAlloc), "");
                unsafe { ::core::slice::from_raw_parts_mut(virt_addr as *mut u8, mem_size) }
            };
            // Copy data
            unsafe {
                ms.with(|| {
                    if file_size != 0 {
                        target[..file_size].copy_from_slice(&elf.input[offset..offset + file_size]);
                    }
                    target[file_size..].iter_mut().for_each(|x| *x = 0);
                });
            }
        }
        (ms, entry)
    }

    fn memory_attr_from(elf_flags: Flags) -> MemoryAttr {
        let mut flags = MemoryAttr::default().user();
        // TODO: handle readonly
        if elf_flags.is_execute() { flags = flags.execute(); }
        flags
    }
}