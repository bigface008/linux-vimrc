# LinuxVimrc - vimrc on linux
> 只有白痴才会只磨刀不用刀。

本项目试图折腾、实现一份快速、轻量、编辑体验完美、**普通**的Linux下的Vim配置。项
目包含在Linux下正常工作的vim配置文件和相应的颜色主题文件、字体文件，目前考虑支持
的语言有C、JS、markdown。（毕竟本菜鸟似乎只用得到这些语言）本项目是
[win-vimrc](https://github.com/bigface008/win-vimrc)项目的Linux版。

## Problem
- 目前，由于个人技术水平的限制，无法同步更新。~~目前尚无妥善解决的办法。~~ 由于
本人安装Windows系统的电脑空间不足，无法安装用于编译YouCompleteMe的VS2017（另外又
不会捣鼓别人编译好的版本），造成了不得不使用Neocomplete\Deoplete的状况。但是，在
Linux下安装YouCompleteMe和Neocomplete比较方便，决定使用YouCompleteMe做主力补全。
这使得Windows和Linux需要使用完全不同的补全工具，大大增加了同步的难度。
- 目前算是初步安装了YouCompleteMe，然而只是配置了C系的补全......

## Installation
1. 克隆本项目。
2. 手动在$HOME/.vim路径下创建files/backup，files/undo，files/swap文件夹。
3. 安装fonts中的字体。（在Linux下这基本没有必要，因为默认的Monospace挺好看的）
4. 安装vim-plug。使用`PlugInstall`命令来安装所有插件（主题颜色已经包括其中）。
5. 执行tags文件生成，YouCompleteMe安装相关的命令。

## Features
1. C、JS的代码高亮和补全、语法提示、搜索替换和跳转。
2. markdown的高亮和预览。
3. 对Git有必要的功能支持。

## Documents
目前尚无完整的文档计划，未来也许会在博客中进行文档编写工作。下面的文档仅是安装过
程中的一些笔记。

[Vim補完計画](./docs/vim-complete.md)

## Plugins List
### Plugin Manager
#### [vim-plug](https://github.com/junegunn/vim-plug)
安装vim-plug命令

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
### File Tree
- [nerdtree](https://github.com/scrooloose/nerdtree)
### Status Line
目前使用Lightline来代替Airline——因为我觉得Airline的Solarized颜色主题不大合适...
lightline-bufferline是用来使用tabline来快速切换buffer的。
- [vim-airline](https://github.com/vim-airline/vim-airline)
- [lightline.vim](https://github.com/itchyny/lightline.vim)
- [lightline-bufferline](https://github.com/mgee/lightline-bufferline)
### Color Theme
- [vim-code-dark](https://github.com/tomasiser/vim-code-dark)
- [base16-vim](https://github.com/chriskempson/base16-vim)
- [gruvbox](https://github.com/morhetz/gruvbox)
### Navigator
目前使用LeaderF来进行函数跳转、文件快速打开等工作。ag被用来加速LeaderF的文件搜索
。其余插件处于停用或者未安装状态。

- [LeaderF](https://github.com/Yggdroot/LeaderF)
- [fzf](https://github.com/junegunn/fzf),[fzf.vim](https://github.com/junegunn/fzf.vim)
- [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)
- [ag](https://github.com/ggreer/the_silver_searcher)
- [tagbar](https://github.com/majutsushi/tagbar)
### Auto Complete
目前貌似是把C和C++的补全整好了一部分。

- [youcompleteme](https://github.com/valloric/youcompleteme)
- [YCM-Generator](https://github.com/rdnetto/YCM-Generator)
- [vim-gutentags](https://github.com/ludovicchabant/vim-gutentags)
- [neocomplete.vim](https://github.com/Shougo/neocomplete.vim)
### Git
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
### Better Editor
目前尚不清楚如何让indentLine在行高亮情况下正常显示行首空格和缩进线。

- [indentLine](https://github.com/Yggdroot/indentLine)
- [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
- [vim-surround](https://github.com/tpope/vim-surround)
- [nerdcommenter](https://github.com/scrooloose/nerdcommenter)
- [auto-pairs](https://github.com/jiangmiao/auto-pairs)
- [vim-easymotion](https://github.com/easymotion/vim-easymotion)
