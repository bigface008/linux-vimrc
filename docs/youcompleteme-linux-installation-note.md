# YouCompleteMe Linux Installation Note
本条目记录了在Ubuntu18.04上安装YouCompleteMe时的各个（最简单的）步骤，需要注意，
是，目前只安装了C的补全支持，下一步大概会考虑完善YouCompleteMe的各项配置，暂不
考虑增加别的语言的支持。
## 最简单的步骤
1. 包管理器安装clang和llvm。目前使用的版本是6.0。

    sudo apt-get install clang llvm
2. 
