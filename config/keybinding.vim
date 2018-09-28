" Key bindings
let mapleader=' '            " Set leader key.

" Split faster.
nnoremap <C-\> :vs<Enter>

" Keybindings for insert mode.
inoremap <C-e> <Esc>A
inoremap <C-a> <Esc>I
inoremap <C-j> <Esc>ja
inoremap <C-k> <Esc>ka
inoremap <C-CR> <Esc>o
inoremap <C-S-CR> <Esc>O

" Move faster between windows.
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Move faster between tabs.
noremap <C-Tab> :bn<Enter>
noremap <C-S-Tab> :bp<Enter>

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
noremap <F11> :call ToggleFullscreen()<Enter>


