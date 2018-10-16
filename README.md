# LinuxVimrc - vimrc on linux
> ������Ϣ�����ڲ�ֹ��

����Ŀ��ͼ���ڡ�ʵ��һ�ݿ��١��������༭����������**��ͨ**��Linux�µ�Vim���á���
Ŀ������Linux������������vim�����ļ�����Ӧ����ɫ�����ļ��������ļ���Ŀǰ����֧��
��������C��JS��markdown�����Ͼ��������ƺ�ֻ�õõ���Щ���ԣ�����Ŀ��
[win-vimrc](https://github.com/bigface008/win-vimrc)��Ŀ��Linux�档

## Problem
- Ŀǰ�����ڸ��˼���ˮƽ�����ƣ��޷�ͬ�����¡�~~Ŀǰ�������ƽ���İ취��~~ ����
���˰�װWindowsϵͳ�ĵ��Կռ䲻�㣬�޷���װ���ڱ���YouCompleteMe��VS2017��������
���ᵷ�ı��˱���õİ汾��������˲��ò�ʹ��Neocomplete\Deoplete��״�������ǣ���
Linux�°�װYouCompleteMe��Neocomplete�ȽϷ��㣬����ʹ��YouCompleteMe��������ȫ��
��ʹ��Windows��Linux��Ҫʹ����ȫ��ͬ�Ĳ�ȫ���ߣ����������ͬ�����Ѷȡ�
- Ŀǰ���ǳ�����װ��YouCompleteMe��Ȼ������û������Preview�Լ����������ͣ�����û
����ȫͷ�ļ��ڵĺ������ƺ�Ҫ���õĶ������кܶ�ܶ�......

## Installation
1. ��¡����Ŀ��
2. �ֶ���$HOME/.vim·���´���files/backup��files/undo��files/swap�ļ��С�
3. ��װfonts�е����塣����Linux�������û�б�Ҫ����ΪĬ�ϵ�Monospaceͦ�ÿ��ģ�
4. ��װvim-plug��ʹ��`PlugInstall`��������װ���в����������ɫ�Ѿ��������У���

## Features
1. C��JS�Ĵ�������Ͳ�ȫ���﷨��ʾ�������滻����ת��
2. markdown�ĸ�����Ԥ����
3. ��Git�б�Ҫ�Ĺ���֧�֡�

## Documents
Ŀǰ�����������ĵ��ƻ���δ��Ҳ����ڲ����н����ĵ���д������������ĵ����ǰ�װ��
���е�һЩ�ʼǡ�
[YouCompleteMe Linux��װ�ּ�](./docs/youcompleteme-linux-installation-note.md)

## Plugins List
### Plugin Manager
#### [vim-plug](https://github.com/junegunn/vim-plug)
��װvim-plug����

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
### File Tree
- [nerdtree](https://github.com/scrooloose/nerdtree)
### Status Line
- [vim-airline](https://github.com/vim-airline/vim-airline)
### Color Theme
- [vim-code-dark](https://github.com/tomasiser/vim-code-dark)
- [base16-vim](https://github.com/chriskempson/base16-vim)
- [gruvbox](https://github.com/morhetz/gruvbox)
### Navigator
Ŀǰʹ��LeaderF�����к�����ת���ļ����ٴ򿪵ȹ�����ag����������LeaderF���ļ�����
������������ͣ�û���δ��װ״̬��

- [LeaderF](https://github.com/Yggdroot/LeaderF)
- [fzf](https://github.com/junegunn/fzf),[fzf.vim](https://github.com/junegunn/fzf.vim)
- [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)
- [ag](https://github.com/ggreer/the_silver_searcher)
- [tagbar](https://github.com/majutsushi/tagbar)
### Auto Complete
Ŀǰ��Ȼ�ڼ��ѵس��Բ�ȫ��

- [youcompleteme](https://github.com/valloric/youcompleteme)
- [YCM-Generator](https://github.com/rdnetto/YCM-Generator)
- [vim-gutentags](https://github.com/ludovicchabant/vim-gutentags)
- [neocomplete.vim](https://github.com/Shougo/neocomplete.vim)
### Git
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
### Better Editor
Ŀǰ�в���������indentLine���и��������������ʾ���׿ո�������ߡ�

- [indentLine](https://github.com/Yggdroot/indentLine)
- [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
- [vim-surround](https://github.com/tpope/vim-surround)
- [nerdcommenter](https://github.com/scrooloose/nerdcommenter)
- [auto-pairs](https://github.com/jiangmiao/auto-pairs)
- [vim-easymotion](https://github.com/easymotion/vim-easymotion)
