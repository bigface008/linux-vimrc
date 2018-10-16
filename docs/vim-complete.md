# Vim補完計画
目前实现的vim补全是基于YouCompleteMe和Universal-Ctags的，还没有比较完美的实现。现
在只支持C/C++的语义和符号补全。这里大概会以逻辑的顺序记录Vim补全功能的配置步骤，
代号：**Vim補完計画**。
## 使用Universal-Ctags来索引头文件
ctags生成系统C/C++头文件的索引的命令为(注意使用
[universal-ctags](https://ctags.io/), 命名为unctags)：

    unctags -I __THROW -I __attribute_pure__ -I __nonnull -I __attribute__ \
    --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p \
    --c++-kinds=+p --fields=+liaSt --extras=+q \
    -f ~/workspace/lib_tags/systags \
    /usr/lib/gcc/x86_64-linux-gnu/7/include/* \
    /usr/lib/gcc/x86_64-linux-gnu/7/include-fixed/* \
    /usr/include/x86_64-linux-gnu/* \
    /usr/include/* \
    /usr/include/c++/7/* \
    /usr/include/x86_64-linux-gnu/sys/*

## YouCompleteMe的安装和配置
1. 包管理器安装clang和llvm。目前使用的版本是6.0。

    sudo apt-get install clang llvm
2.
