" Key bindings
let mapleader=' '            " Set leader key.

" Keybindings for insert mode.
inoremap <C-e> <Esc>A
inoremap <C-a> <Esc>I
" inoremap <C-j> <Esc>ja
" inoremap <C-k> <Esc>ka
" inoremap <C-c><C-c> <Esc>o
" inoremap <C-c> <Esc>O
inoremap <C-CR> <Esc>o
inoremap <C-S-CR> <Esc>O
inoremap <C-z> <Esc>ua

nnoremap j gj
nnoremap k gk
nnoremap <leader>s :w<Enter>

" Move faster between buffers.
noremap <leader>n :bn<Enter>
noremap <leader>p :bp<Enter>

" Global string searching.
nnoremap <leader>F :Lines<Enter>

" Terminal
noremap <C-`> :terminal<Enter>

" Fullscreen function binding. Only can be used when wmctrl is installed.
let g:fullscreen = 0
function! ToggleFullscreen()
    if g:fullscreen == 1
        let g:fullscreen = 0
        let mod = "remove"
    else
        let g:fullscreen = 1
        let mod = "add"
    endif
    call system("wmctrl -ir " . v:windowid . " -b " . mod . ",fullscreen")
endfunction
" autocmd GUIEnter * call ToggleFullscreen()
noremap <F11> :call ToggleFullscreen()<Enter>

" Change font size with shortcurt keys. No satisfying.
" command! Bigger  :let &guifont = substitute(&guifont, '\d\+$', '\=submatch(0)+1', '')
" command! Smaller :let &guifont = substitute(&guifont, '\d\+$', '\=submatch(0)-1', '')
" noremap <C-+> :Bigger<Enter>
" noremap <C--> :Smaller<Enter>
