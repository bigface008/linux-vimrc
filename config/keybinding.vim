" Key bindings
let mapleader=' '            " Set leader key.

" Split faster.
nnoremap <C-\> :vs<Enter>

" Keybindings for insert mode.
inoremap <C-e> <Esc>A
inoremap <C-a> <Esc>I
" inoremap <C-j> <Esc>ja
" inoremap <C-k> <Esc>ka
inoremap <C-CR> <Esc>o
inoremap <C-S-CR> <Esc>O

" Move faster between windows.
" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l

" Move faster between tabs.
noremap <M-f> :bn<Enter>
noremap <M-b> :bp<Enter>

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
