# lab8: 文件系统

## 实验目的
* 了解基本的文件系统系统调用的实现方法；
* 了解一个基于索引节点组织方式的Simple FS文件系统的设计与实现；
* 了解文件系统抽象层-VFS的设计与实现；

## 实验内容
实验七完成了在内核中的同步互斥实验。本次实验涉及的是文件系统，通过分析了解rcore文件系统的总体架构设计，完善读写文件操作，从新实现基于文件系统的执行程序机制（即改写do_execve），从而可以完成执行存储在磁盘上的文件和实现文件读写等功能。

## 系列练习

- 参考 rcore 中的磁盘文件系统， 实现一个简单的 ramfs， 要求支持：文件创建， 读写， 删除；目录

## 实验原理

### 文件系统的基本概念

操作系统中负责管理和存储可长期保存数据的软件功能模块称为文件系统。在本次试验中，主要侧重文件系统的设计实现和对文件系统执行流程的分析与理解。为此， 我们需要结构化地管理存储介质上的信息。 这就是文件系统的工作: *将存储在介质上的档案， 以结构化的形式，如 "文件"， "目录"， "符号链接" 等概念来展现*。

### rcore 文件系统总体介绍
rcore的文件系统模型源于Havard的OS161的文件系统和Linux文件系统。但其实这二者都是源于传统的UNIX文件系统设计。UNIX提出了四个文件系统抽象概念：文件(file)、目录项(dentry)、索引节点(inode)和安装点(mount point)。这些抽象概念形成了UNIX文件系统的逻辑数据结构，并需要通过一个具体文件系统的架构设计与实现把上述信息映射并储存到存储介质（如磁盘、SSD等）上，从而在具体文件系统的存储布局上体现出上述抽象概念。

rcore模仿了UNIX的文件系统设计，rcore的文件系统架构主要由四部分组成:
* 通用文件系统访问接口层:该层提供了一个从用户空间到文件系统的标准访问接口。这一层访问接口让应用程序能够通过一个简单的接口获得rcore内核的文件系统服务。
* 文件系统抽象层:向上提供一个一致的接口给内核其他部分(文件系统相关的系统调用实现模块和其他内核功能模块)访问。向下提供一个同样的抽象函数指针列表和数据结构屏蔽不同文件系统的实现细节。
* Simple FS文件系统层:一个基于索引方式的简单文件系统实例。向上通过各种具体函数实现以对应文件系统抽象层提出的抽象函数。向下访问外设接口。
* 外设接口层:向上提供device访问接口屏蔽不同硬件细节。向下实现访问各种具体设备驱动的接口，比如disk设备接口/串口设备接口/键盘设备接口等。

对照上面的层次我们再大致介绍一下文件系统的访问处理过程，加深对文件系统的总体理解。假如应用程序操作文件（打开/创建/删除/读写），首先需要通过文件系统的通用文件系统访问接口层给用户空间提供的访问接口进入文件系统内部，接着由文件系统抽象层把访问请求转发给某一具体文件系统（比如SFS文件系统），具体文件系统（Simple FS文件系统层）把应用程序的访问请求转化为对磁盘上的block的处理请求，并通过外设接口层交给磁盘驱动例程来完成具体的磁盘操作。其rcore文件系统总体结构如下所示：

> TODO ！！！图 rcore文件系统总体结构

从rcore操作系统不同的角度来看，rcore中的文件系统架构包含四类主要的数据结构，它们分别是:
* 超级块(SuperBlock)，它主要从文件系统的全局角度描述特定文件系统的全局信息。它的作用范围是整个OS空间。
* 索引节点(inode):它主要从文件系统的单个文件的角度描述了文件的各种属性和数据所在位置。它的作用范围是整个OS空间。
* 目录项(dentry):它主要从文件系统的文件路径的角度描述了文件路径中的特定目录。它的作用范围是整个OS空间。
* 文件(file)，它主要从进程的角度描述了一个进程在访问文件时需要了解的文件标识，文件读写的位置，文件引用情况等信息。它的作用范围是某一具体进程。

### 通用文件系统访问接口

#### 文件和目录相关用户库函数

实验八中部分用户库函数与文件系统有关，我们先讨论对单个文件进行操作的系统调用，然后讨论对目录和文件系统进行操作的系统调用。相关函数实现位于rcore-ulib目录下。

在文件操作方面，最基本的相关用户库函数是open、close、read、write。在读写一个文件之前，首先要用open系统调用将其打开。open的第一个参数指定文件的路径名，可使用绝对路径名；第二个参数指定打开的方式，可设置为O\_RDONLY、O\_WRONLY、O\_RDWR，分别表示只读、只写、可读可写。在打开一个文件后，就可以使用它返回的文件描述符fd对文件进行相关操作。在使用完一个文件后，还要用close系统调用把它关闭，其参数就是文件描述符fd。这样它的文件描述符就可以空出来，给别的文件使用。

读写文件内容的系统调用是read和write。read系统调用有三个参数：一个指定所操作的文件描述符，一个指定读取数据的存放地址，最后一个指定读多少个字节。在rust程序中调用该系统调用的方法如下：

```rust
count = read(fd, buffer, nbytes);
```

该系统调用会把实际读到的字节数返回给count变量。在正常情形下这个值与nbytes相等，但有时可能会小一些。例如，在读文件时碰上了文件结束符，从而提前结束此次读操作。

如果由于参数无效或磁盘访问错误等原因，使得此次系统调用无法完成，则count被置为-SysError。而write函数的参数与之完全相同。

对于目录而言，最常用的操作是进入某个目录，这在处理上与读文件类似，即需要通过opendir函数打开目录，通过readdir来获取目录中的文件信息，读完后还需通过closedir函数来关闭目录。由于在rcore中把目录看成是一个特殊的文件，所以opendir和closedir实际上就是调用与文件相关的open和close函数。只有readdir需要调用获取目录内容的特殊系统调用sys\_getdirentry。而且这里没有写目录这一操作。在目录中增加内容其实就是在此目录中创建文件，需要用到创建文件的函数。

#### 文件和目录访问相关系统调用

与文件相关的open、close、read、write用户库函数对应的是sys\_open、sys\_close、sys\_read、sys\_write四个系统调用接口。与目录相关的readdir用户库函数对应的是sys\_getdirentry系统调用。这些系统调用函数接口将通过syscall函数来获得rcore的内核服务。当到了rcore内核后，在调用文件系统抽象层的file接口和dir接口。


操作文件和目录的syscall：
| syscall | 含义 |
| --- | --- |
| `open(pathname, flags) -> fd` | 读写文件前, 先调用 `open` 取得访问这个文件的句柄 `fd`, 称为文件描述符 (file descriptor) |
| `close(fd)` | 对文件的访问结束后, 调用 `close` 将其关闭. |
| `read(fd, buf, size) -> count` | 从 `fd` 描述的文件中, 读取至多 `size` 字节到 `buf` 中. 返回值 `count` 小于等于 `size`, 表示读取了 `count` 字节的数据. |
| `write(fd, buf, size) -> count` | 将 `buf` 开始的至多 `size` 字节的内存的内容, 写入到 `fd` 描述的文件中. 返回值表示写入了 `count` 字节的数据. |
| `getdirentry(fd, *direntp)` | 读取目录内容到 `direntp` 指向的内存中 |

注意， syscall 一旦失败， 无论是因为参数错误 / 访问越界 / 设备空间满， 都返回 -1。


### 文件系统抽象层 - VFS

文件系统抽象层VFS是把不同文件系统的对外共性接口提取出来，通用文件系统访问接口层只需访问文件系统抽象层，而不需关心具体文件系统的实现细节和接口。在VFS的抽象设计中，主要包含三种trait：

- FileSystem：整个文件系统
- File：被进程控制块管理单个文件
- INode：管理文件操作的索引节点

#### FileSystem接口

一个具体的文件系统需要实现FileSystem trait要求的三个成员函数：

- sync：把缓冲在内存中的文件系统的元数据信息和文件内容写回磁盘，保证文件系统的完整性和一致性。
- root_inode：得到文件系统根目录的inode位置和数据信息，从而可以对各种文件/目录进行访问。
- info：输出一些补充信息，比如最大文件长度等。

```rust
/// Abstract filesystem
pub trait FileSystem: Sync {
    fn sync(&self) -> Result<()>;
    fn root_inode(&self) -> Arc<INode>;
    fn info(&self) -> &'static FsInfo;
}
```

#### file & dir接口

file&dir接口层描述了进程在内核中直接访问的文件相关信息，这定义在File数据结构中，具体描述如下：

```rust
pub struct File {
    inode: Arc<INode>,
    offset: usize,
    readable: bool,
    writable: bool,
}
/// impl methods
pub fn new(inode: Arc<dyn INode>, readable: bool, writable: bool) -> Self
pub fn read(&mut self, buf: &mut [u8]) -> Result<usize>
pub fn write(&mut self, buf: &[u8]) -> Result<usize>
pub fn info(&self) -> Result<FileInfo>
pub fn get_entry(&self, id: usize) -> Result<String>
```

而在kernel/src/process.rs中表示进程的Process结构中描述了进程访问文件的files成员：

```rust
    pub struct Process {
	   ...
        pub files: BTreeMap<usize, Arc<Mutex<File>>>,
    }
```

files是一个BTreeMap容器，包含了<fd, file>这样的键值对项，这样就把用户程序访问的文件描述符和文件名联系起来了。而下面将介绍的File结构的成员inode会把文件名，文件内容联系起来。

#### inode 接口 

inode（index node）是位于内存的索引节点，它是VFS中的重要组成部分，实际负责把文件的各种具体操作，其表示为一个trait，定义如下：

```rust
// Abstract operations on a inode.
pub trait INode: Any + Sync + Send {
    fn read_at(&self, offset: usize, buf: &mut [u8]) -> Result<usize>;
    fn write_at(&self, offset: usize, buf: &[u8]) -> Result<usize>;
    fn info(&self) -> Result<FileInfo>;
    fn sync(&self) -> Result<()>;
    fn resize(&self, len: usize) -> Result<()>;
    fn create(&self, name: &str, type_: FileType) -> Result<Arc<INode>>;
    fn unlink(&self, name: &str) -> Result<()>;
    fn link(&self, name: &str, other: &Arc<INode>) -> Result<()>;
    fn rename(&self, old_name: &str, new_name: &str) -> Result<()>;
    fn move_(&self, old_name: &str, target: &Arc<INode>, new_name: &str) -> Result<()>;
    fn find(&self, name: &str) -> Result<Arc<INode>>;
    fn get_entry(&self, id: usize) -> Result<String>;
    fn fs(&self) -> Arc<FileSystem>;
    fn as_any_ref(&self) -> &Any;
}
//下面函数有缺省实现
pub fn downcast_ref<T: INode>(&self) -> Option<&T>; 
pub fn list(&self) -> Result<Vec<String>>;
pub fn lookup(&self, path: &str) -> Result<Arc<INode>>;
```

可以看出inode是对常规文件、目录、设备文件所有操作的表示。对于某一具体的文件系统中的文件或目录，只需实现相关的函数，就可以被用户进程访问具体的文件了，且用户进程无需了解具体文件系统的实现细节。

### Simple FS 文件系统 

在实验八中关注的主要是SFS支持的常规文件、目录和链接中的 hardlink 的设计实现。SFS文件系统中目录和常规文件具有共同的属性，而这些属性保存在索引节点中。


#### SFS文件系统 

在实验八中，SFS文件系统通常保存在用内存模拟的内存磁盘上。SFS以 block （4K，与内存 page 大小相等）为基本访问单位。SFS文件系统的布局中第0个块（4K）是超级块（superblock），它包含了关于文件系统的所有关键参数，然后是表示磁盘空闲程度的free_map区域；在接下来是SFS的inodes索引节点区域，最后是各种文件的数据区域。其定义如下：

```rust
pub struct SimpleFileSystem {
    /// on-disk superblock 文件系统超级块
    super_block: RwLock<Dirty<SuperBlock>>,
    /// blocks in use are mared 0 空闲块bit表示区
    free_map: RwLock<Dirty<BitVec>>,
    /// inode list  索引节点区域
    inodes: RwLock<BTreeMap<INodeId, Weak<INodeImpl>>>,
    /// device 文件数据区域
    device: Mutex<Box<Device>>,
    /// Pointer to self, used by INodes
    self_ptr: Weak<SimpleFileSystem>,
}
/// 成员函数实现
/// Load SFS from device
pub fn open(mut device: Box<Device>) -> vfs::Result<Arc<Self>>
/// Create a new SFS on blank disk
pub fn create(device: Box<Device>, space: usize) -> Arc<Self>
```

对于超级块，其定义如下：

```rust
pub struct SuperBlock {
    /// magic number, should be SFS_MAGIC
    pub magic: u32,
    /// number of blocks in fs
    pub blocks: u32,
    /// number of unused blocks in fs
    pub unused_blocks: u32,
    /// information for sfs
    pub info: Str32,
}
```

可以看到，包含一个成员变量魔数magic，其值为0x2f8dbe2a，内核通过它来检查磁盘镜像是否是合法的 SFS img；成员变量blocks记录了SFS中所有block的数量，即 img 的大小；成员变量unused\_block记录了SFS中还没有被使用的block的数量；成员变量info包含了字符串"simple file system"。

第1个块放了一个root-dir的inode，用来记录根目录的相关信息。有关inode还将在后续部分介绍。这里只要理解root-dir是SFS文件系统的根结点，通过这个root-dir的inode信息就可以定位并查找到根目录下的所有文件信息。

从第2个块开始，根据SFS中所有块的数量，用1个bit来表示一个块的占用和未被占用的情况。这个区域称为SFS的freemap区域，这将占用若干个块空间。为了更好地记录和管理freemap区域。

最后在剩余的磁盘空间中，存放了所有其他目录和文件的inode信息和内容数据信息。需要注意的是虽然一个inode的空间小于一个块的大小（4096B），但为了实现简单，每个 inode 都占用一个完整的 block。

在kernel/src/fs.rs文件中通过

```rust
lazy_static! {
    pub static ref ROOT_INODE: Arc<INode> = {
        let device = { ...  };
        let sfs = SimpleFileSystem::open(device).expect("failed to open SFS");
        sfs.root_inode()
    };
}
```

成了加载位于内存硬盘上的SFS文件系统的超级块superblock和freemap的工作。这样，在内存中就有了SFS文件系统的全局信息。


#### 索引节点 

在实验八中关注的主要是SFS支持的常规文件、目录和链接中的 hardlink 的设计实现。SFS文件系统中目录和常规文件具有共同的属性，而这些属性保存在索引节点中。SFS通过索引节点来管理目录和常规文件，索引节点包含操作系统所需要的关于某个文件的关键信息，比如文件的属性、访问许可权以及其它控制信息都保存在索引节点中。可以有多个文件名可指向一个索引节点。

##### 磁盘索引节点

在SFS文件系统中，需要记录文件内容的存储位置以及文件名与文件内容的对应关系。DiskINode记录了文件或目录内容的索引信息，该数据结构在硬盘里储存，需要时读入内存。首先我们看看在内存磁盘上的索引节点内容：

```rust
pub struct DiskINode {
    /// size of the file (in bytes)
    /// undefined in dir (256 * #entries ?)
    pub size: u32,
    /// one of SYS_TYPE_* above
    pub type_: FileType,
    /// number of hard links to this file
    /// Note: "." and ".." is counted in this nlinks
    pub nlinks: u16,
    /// number of blocks
    pub blocks: u32,
    /// direct blocks
    pub direct: [u32; NDIRECT],
    /// indirect blocks
    pub indirect: u32,
    /// double indirect blocks
    pub db_indirect: u32,
}
```

通过上表可以看出，如果inode表示的是文件，则成员变量direct[]直接指向了保存文件内容数据的数据块索引值。indirect间接指向了保存文件内容数据的数据块，indirect指向的是间接数据块（indirect block），此数据块实际存放的全部是数据块索引，这些数据块索引指向的数据块才被用来存放文件内容数据。

默认情况下，rcore 里 SFS\_NDIRECT 是 12，即直接索引的数据页大小为 12 \* 4k = 48k；当使用一级间接数据块索引时，rcore 支持最大的文件大小为 12 \* 4k + 1024 \* 4k = 48k + 4m。数据索引表内，0 表示一个无效的索引，inode 里 blocks 表示该文件或者目录占用的磁盘的 block 的个数。indiret 为 0 时，表示不使用一级索引块。（因为 block 0 用来保存 super block，它不可能被其他任何文件或目录使用，所以这么设计也是合理的）。

对于普通文件，索引值指向的 block 中保存的是文件中的数据。而对于目录，索引值指向的数据保存的是目录下所有的文件名以及对应的索引节点所在的索引块（磁盘块）所形成的数组。数据结构如下：

```rust
struct DirEntry {
    offset: u32,
    name: [u8; 256],
}
```

操作系统中，每个文件系统下的 inode 都应该分配唯一的 inode 编号。SFS 下，为了实现的简便（偷懒），每个 inode 直接用它所在的磁盘 block 的编号作为 inode 编号。比如，root block 的 inode 编号为 1；每个 sfs\_disk\_entry 数据结构中，name 表示目录下文件或文件夹的名称，ino 表示磁盘 block 编号，通过读取该 block 的数据，能够得到相应的文件或文件夹的 inode。ino 为0时，表示一个无效的 entry。此外，和 inode 相似，每个 DirEntry 也占用一个 block。

##### 内存索引节点

放在内存中的SFS的inode表示定义在InodeImpl结构中，且实现了vfs::Inode trait要求的各种成员函数。其定义如下：

```rust
/// inode for sfs
pub struct INodeImpl {
    /// inode number
    id: INodeId,
    /// on-disk inode
    disk_inode: RwLock<Dirty<DiskINode>>,
    /// Weak reference to SFS, used by almost all operations
    fs: Arc<SimpleFileSystem>,
}
```

可以看到SFS中的内存inode包含了SFS的硬盘inode信息，而且还增加了其他一些信息，这属于是便于进行是判断否改写、互斥操作、回收和快速地定位等作用。需要注意，一个内存inode是在打开一个文件后才创建的，如果关机则相关信息都会消失。而硬盘inode的内容是保存在硬盘中的，只是在进程需要时才被读入到内存中，用于访问文件或目录的具体内容数据。INodeImpl实现了INode trait要求实现的各种成员函数，从而可以完成文件/目录的相关读写操作。

### 设备层文件 IO 层 

在本实验中，我们把一个段包含SFS文件系统的内存作为一个磁盘来对待。为了表示这样一个设备，rcore为此定义了有Device trait的MemBuf数据结构，其描述如下：

```rust
struct MemBuf(&'static [u8]);
/// Interface for FS to read & write
pub trait Device: Send {
    fn read_at(&mut self, offset: usize, buf: &mut [u8]) -> Option<usize>;
    fn write_at(&mut self, offset: usize, buf: &[u8]) -> Option<usize>;
}
```

TODO：为何 MemBuf::write_at没有实现？？？BlockedDevice没有用？？？

### 实验执行流程概述 

与实验七相比，实验八增加了文件系统，并因此实现了通过文件系统来加载可执行文件到内存中运行的功能，导致对进程管理相关的实现比较大的调整。我们来简单看看文件系统是如何初始化并能在rcore的管理下正常工作的。

前述的“SFS文件系统”一节讲述了对SFS文件系统的初始化，完成了对super_block/free_map/root_inode在虚拟磁盘上的查找和加载，从而让rcore的其他部分能够通过访问虚拟文件系统的接口来进一步访问到SFS实例文件系统。

### 文件操作实现 

#### 打开文件 

有了上述分析后，我们可以看看如果一个用户进程打开文件会做哪些事情？首先假定用户进程需要打开的文件已经存在在硬盘上。以sfs\_filetest1文件为例，首先用户进程会调用如下语句：

```rust
let fd1 = sys_open("sfs_filetest1", O_RDONLY);
```

从字面上可以看出，如果rcore能够正常查找到这个文件，就会返回一个代表文件的文件描述符fd1，这样在接下来的读写文件过程中，就直接用这样fd1来代表就可以了。那这个打开文件的过程是如何一步一步实现的呢？

##### 通用文件访问接口层的处理流程

首先进入通用文件访问接口层的处理流程，即进一步调用如下用户态函数： sys\_open-\>sys_call，从而引起系统调用进入到内核态。到了内核态后，通过中断处理例程，会调用到sys\_open内核函数，需要把位于用户空间的字符"sfs\_filetest1"拷贝到内核空间中的字符串path中，并进入到文件系统抽象层的处理流程完成进一步的打开文件操作中。

##### 文件系统抽象层的处理流程

当前进程会根据字符串path代表的文件名在SFS中查找，如果查到，会得到此文件对应的inode，然后在找到一个空闲的fd，形成(fd, inode)，并把此结构插入到当前进程控制块的files结构中。这样open操作就算完成了。这个过程中，查找inode的lookup函数相对复杂一些，需要在当前目录中进行文件名匹配，从而找到对应的inode。

##### SFS文件系统层的处理流程

注意：在实验八中，为简化代码，sfs\_lookup函数中并没有实现能够对多级目录进行查找的控制逻辑

在INode的lookup成员函数实现中，首先根据路径名，调用INodeImpl::find函数查找进程当前目录“.”所对应的inode节点，而这是一个目录索引节点，在这个节点上进一步调用INodeImpl::find函数，查收文件名`fs\_filetest1`对应的inode节点。如果SFS当前目录有这个文件，则找到对应的inode，并返回。

#### 读文件

读文件其实就是读出目录中的目录项，首先假定文件在磁盘上且已经打开。用户进程有如下语句：

```rust
let ret=read(fd, data, len);
```

即读取fd对应文件，读取长度为len，存入data中。下面来分析一下读文件的实现。

##### 通用文件访问接口层的处理流程

先进入通用文件访问接口层的处理流程，即进一步调用如下用户态函数：sys\_read-\>syscall，从而引起系统调用进入到内核态。到了内核态以后，通过中断处理例程，会调用到sys\_read内核函数，进入到文件系统抽象层处理流程完成进一步读文件的操作。

##### 文件系统抽象层/SFS文件系统层的处理流程

内核会查找当前进程控制块中的files容器中是否有fd对应的File结构的成员变量file。如有，则会找到此file的INode成员变量inode。找到inode后，就可以通过访问SFS实现的INodeImpl::read_at函数读取文件内容。

##### 设备层的处理流程

INodeImpl::read_at函数会进一步调用Device::read_block函数，并最终调用BlockedDevice::read_at函数完成对虚拟内存磁盘MemBuf的读取。