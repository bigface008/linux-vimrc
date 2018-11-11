" UI
set nu                       " Show line number.
" set relativenumber         " Set relative line number.
set ruler                    " Set ruler.
set background=dark          " Set background.
colorscheme molokai     " Set theme.
" colorscheme NeoSolarized     " Set theme.
let base16colorspace=256
set termguicolors
set cursorline               " Show line cursor.
" set cursorcolumn           " Show column cursor.
set cc=80                    " Hightlight column 80.

" Set font type.
" set guifont=Source_Code_Variable:h11:b:cDEFAULT
" set guifont=Source\ Code\ Variable\ 11
" set guifont=Courier_new:h11:b:cDEFAULT
" set guifont=Fira\ Code\ Regular\ 9
" set guifont=Fantasque\ Sans\ Mono\ 11
" set guifont=Consolas:h12
" set guifont=Monospace\ 9
set guifont=Monaco\ 9

" Set cursor type.
" set gcr=a:block-blinkon0   " No flashing cursor.
set gcr=a:block-blinkon0,i:ver5-blinkon0

" Show tab and special space
set list
set listchars=tab:>\ ,trail:.,extends:>,precedes:<,nbsp:.
" highlight WhitespaceEOL ctermbg=red guibg=red
" match WhitespaceEOL /\s\+$/

" GUI config
if has("gui_running")
    set lines=1000
    set columns=1000
    set guioptions-=m        " Hide menu bar.
    set guioptions-=T        " Hide tool bar.
    set guioptions-=L        " Hide left scroll bar.
    set guioptions-=r        " Hide right scroll bar.
    set guioptions-=b        " Hide bottom scroll bar.
    set guioptions-=e        " Hide tabline. (Thus show lightline tabline)
    set showtabline=0        " Hide tab line.
endif

