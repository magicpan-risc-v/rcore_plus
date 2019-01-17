# Lab0 学习Rust

为了帮助大家学习Rust语言，检验自己对Rust的掌握程度，我们参考并借用了斯坦福大学CS140e课程中的Rust小练习，作为rCore Lab的前置练习。相信大家经过这一阶段的磨练后，就能够和Rust编译器愉快相处，为之后顺利上手rCore OS打下基础！

## 练习

具体而言，我们有24个单文件Rust程序，分别位于以下三个文件夹内：

- `compile-fail` - 你需要修改其中的程序，使得它**编译失败**
- `compile-pass` - 你需要修改其中的程序，使得它**编译通过**
- `run-pass` - 你需要修改其中的程序，使得它运行时**测试通过**

Hint：每个程序的文件名代表了这个题目的知识点。

在完成代码修改后，请大家在每个程序中以注释的形式简单回答以下问题（中文即可）：

* 现在哪里错了？你是如何修改的？

### 测试脚本

在文件夹中还包含一个测试脚本`test.sh`，它有以下三种使用方法：

* `./test.sh`：测试全部文件
* `./test.sh <filter>`：测试指定文件，文件名中包含`<filter>`字串的程序会被运行
* `./test.sh -v`：对所有失败的测试，输出Rust编译器的错误信息

当测试脚本给出 `24 passes, 0 failures`，说明你通过了所有测试！

### 修改限制

每个文件都标注了允许修改代码的行数。例如`compile-pass/try.rs`文件开头包含以下说明：

```rust
// FIXME: Make me compile. Diff budget: 12 line additions and 2 characters.
```

这意味着你至多能新添加12行代码，并修改2个字符。

你可以使用`git diff`命令显示行修改情况，以及 `git diff --word-diff-regex=.` 命令显示字符修改情况。

### 修改规则

* 禁止使用`unimplemented!()`
* 禁止修改`assert!`语句
* 禁止修改标注“do not modify”的代码
* 禁止修改文件名、移动文件、创建新文件

如有疑问，请咨询助教，并欢迎大家在课程微信群/Piazza中交流讨论！



## Rust参考资料

* Rust官方主页：https://www.rust-lang.org

  * Rust官方文档 中文版：https://kaisery.github.io/trpl-zh-cn/
  * Rust官方文档 英文版：https://doc.rust-lang.org/book/second-edition/

* Rust crates文档：https://docs.rs

* Rust语法速查表：https://cheats.rs

  * 内存布局图示：https://docs.google.com/presentation/d/1q-c7UAyrUlM-eZyTo1pd8SZ0qwA_wYxmPZVOQkoDmH4
  * 宏语法演示：https://lukaslueg.github.io/macro_railroad_wasm_demo/
  * 所有权机制图示：https://rufflewind.com/img/rust-move-copy-borrow.png

* Writing an OS in Rust：https://os.phil-opp.com

  教你用Rust写x86_64 OS！