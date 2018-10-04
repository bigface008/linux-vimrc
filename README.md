# LinuxVimrc - vimrc on linux
> 生命不息，折腾不止。

本项目试图折腾、实现一份快速、轻量、编辑体验完美、**普通**的Linux下的Vim配置。项目包
含在Linux下正常工作的vim配置文件和相应的颜色主题文件、字体文件，目前考虑支持的
语言有C、JS、markdown。（毕竟本菜鸟似乎只用得到这些语言）本项目是
[win-vimrc](https://github.com/bigface008/win-vimrc)项目的Linux版。

## Problem
- 目前，由于个人技术水平的限制，无法同步更新。~~目前尚无妥善解决的办法。~~ 由于
本人安装Windows系统的电脑空间不足，无法安装用于编译YouCompleteMe的VS2017（另外又
不会捣鼓别人编译好的版本），造成了不得不使用Neocomplete\Deoplete的状况。但是，在
Linux下安装YouCompleteMe和Neocomplete比较方便，决定使用YouCompleteMe做主力补全。
这使得Windows和Linux需要使用完全不同的补全工具，大大增加了同步的难度。
- 目前算是初步安装了YouCompleteMe，然而发现没法调出Preview以及变量的类型，甚至没
法不全头文件内的函数。似乎要配置的东西还有很多很多......

## Installation
1. 克隆本项目。
2. 手动在$HOME/.vim路径下创建files/backup，files/undo，files/swap文件夹。
3. 安装fonts中的字体。（在Linux下这基本没有必要，因为默认的Monospace挺好看的）
4. 安装vim-plug。使用`PlugInstall`命令来安装所有插件（主题颜色已经包括其中）。

## Features
1. C、JS的代码高亮和补全、语法提示、搜索替换和跳转。
2. markdown的高亮和预览。
3. 对Git有必要的功能支持。

## Documents
目前尚无完整的文档计划，未来也许会在博客中进行文档编写工作。下面的文档仅是安装过
程中的一些笔记。
[YouCompleteMe Linux安装手记](./docs/youcompleteme-linux-installation-note.md)

## Plugins List
### junegunn/vim-plug
[vim-plug](https://github.com/junegunn/vim-plug)
安装vim-plug命令

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
### vim-airline/vim-airline
[airline](https://github.com/vim-airline/vim-airline)
### tomasiser/vim-code-dark
[vim-code-dark](https://github.com/tomasiser/vim-code-dark)
### scrooloose/nerdtree
[nerdtree](https://github.com/scrooloose/nerdtree)
### junegunn/fzf.vim
[fzf](https://github.com/junegunn/fzf)
[fzf.vim](https://github.com/junegunn/fzf.vim)
### shougo/neocomplete.vim
[neocomplete](https://github.com/Shougo/neocomplete.vim)
### Yggdroot/indentLine
[indentLine](https://github.com/Yggdroot/indentLine)
### ctrlpvim/ctrlp.vim
[ctrlp](https://github.com/ctrlpvim/ctrlp.vim)
### majutsushi/tagbar
[tagbar](https://github.com/majutsushi/tagbar)
### terryma/vim-multiple-cursors
[vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
### tpope/vim-surround
[vim-surround](https://github.com/tpope/vim-surround)
### scrooloose/nerdcommenter
[nerdcommenter](https://github.com/scrooloose/nerdcommenter)
### jiangmiao/auto-pairs
[auto-pairs](https://github.com/jiangmiao/auto-pairs)
### airblade/vim-gitgutter
[vim-gitgutter](https://github.com/airblade/vim-gitgutter)
### easymotion/vim-easymotion
[vim-easymotion](https://github.com/easymotion/vim-easymotion)
