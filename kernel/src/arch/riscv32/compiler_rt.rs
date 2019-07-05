//! Workaround for missing compiler-builtin symbols
//!
//! [atomic](http://llvm.org/docs/Atomics.html#libcalls-atomic)
use super::interrupt::{ disable_and_store, restore };

#[no_mangle]
pub extern "C" fn abort() {
    panic!("abort");
}

#[no_mangle]
pub extern "C" fn __atomic_load_4(ptr : usize) -> u32 {
    let temp = unsafe{ disable_and_store() };
    let res = unsafe{ *(ptr as *const u32) };
    unsafe{ restore(temp); }
    res
}

#[no_mangle]
pub extern "C" fn __atomic_store_4(ptr : usize, val : u32) {
    let temp = unsafe{ disable_and_store() };
    let real_ptr : *mut u32 = unsafe { ptr as *mut u32 };
    unsafe { *real_ptr = val; }
    unsafe{ restore(temp); }
}

#[no_mangle]
pub extern "C" fn __atomic_load_8(ptr : usize) -> u64 {
    let temp = unsafe{ disable_and_store() };
    let res = unsafe{ *(ptr as *const u64) };
    unsafe{ restore(temp); }
    res
}

#[no_mangle]
pub extern "C" fn __atomic_store_8(ptr : usize, val : u64) {
    let temp = unsafe{ disable_and_store() };
    let real_ptr : *mut u64 = unsafe { ptr as *mut u64 };
    unsafe { *real_ptr = val; }
    unsafe{ restore(temp); }
}

#[no_mangle]
pub extern "C" fn __atomic_fetch_sub_8(ptr : usize, val : u64) -> u64 {
    let temp = unsafe{ disable_and_store() };
    let real_ptr : *mut u64 = unsafe { ptr as *mut u64 };
    let res = unsafe { (*real_ptr) - val };
    unsafe{ restore(temp); }
    res
}

#[no_mangle]
pub extern "C" fn __atomic_fetch_add_8(ptr : usize, val : u64) -> u64 {
    let temp = unsafe{ disable_and_store() };
    let real_ptr : *mut u64 = unsafe { ptr as *mut u64 };
    let res = unsafe { (*real_ptr) + val };
    unsafe{ restore(temp); }
    res
}

#[no_mangle]
pub extern "C" fn __atomic_compare_exchange_4(ptr : usize, expected : usize, desired : u32) -> bool {
    let temp = unsafe{ disable_and_store() };
    let val = unsafe{ *(ptr as *const u32) };
    let expect = unsafe{ *(expected as *const u32) };
    let ret = ( val == expect );
    if !ret {
        unsafe {
            *(expected as *mut u32) = expect;
        }
        unsafe{ restore(temp); }
        return ret;
    }
    unsafe {
        *(ptr as *mut u32) = desired;
    }
    unsafe{ restore(temp); }
    return ret;
}

#[no_mangle]
pub extern "C" fn __atomic_compare_exchange_8(ptr : usize, expected : usize, desired : u64) -> bool {
    let temp = unsafe{ disable_and_store() };
    let val = unsafe{ *(ptr as *const u64) };
    let expect = unsafe{ *(expected as *const u64) };
    let ret = ( val == expect );
    if !ret {
        unsafe {
            *(expected as *mut u64) = expect;
        }
        unsafe{ restore(temp); }
        return ret;
    }
    unsafe {
        *(ptr as *mut u64) = desired;
    }
    unsafe{ restore(temp); }
    return ret;
}
