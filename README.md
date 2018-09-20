# LinuxVimrc - vimrc on linux
本项目试图实现一份快速、轻量、编辑体验完美、**普通**的Linux下的Vim配置。项目包
含在Linux下正常工作的vim配置文件和相应的颜色主题文件、字体文件，目前考虑支持的
语言有C、JS、markdown。（毕竟似乎只用得到这些语言）本项目是
[win-vimrc](https://github.com/bigface008/win-vimrc)项目的Linux版。
很可能无法同步更新。目前尚无妥善解决的办法。

## Installation
1. 克隆本项目。
2. 手动在$HOME/.vim路径下创建files/backup，files/undo，files/swap文件夹。
3. 安装fonts中的字体。
4. 使用`PlugInstall`命令来安装所有插件（主题颜色已经包括其中）。

## Features
1. C、JS的代码高亮和补全、语法提示、搜索替换和跳转。
2. markdown的高亮和预览。
3. 对Git有必要的功能支持。

## Documents
目前尚无文档计划，未来也许会在博客中进行文档编写工作。

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
