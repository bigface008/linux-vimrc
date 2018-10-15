" Plugin
call plug#begin('~/.vim/plugged')
" Basic
Plug 'terryma/vim-multiple-cursors'
" Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
" UI
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'majutsushi/tagbar'
Plug 'Yggdroot/indentLine'
" UI Themes
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'
Plug 'jnurmine/zenburn'
" Complete
Plug 'valloric/youcompleteme'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
" Plug 'shougo/neocomplete.vim'
" Quick search
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Git
Plug 'airblade/vim-gitgutter'
" Other
Plug 'iamcco/markdown-preview.vim'
call plug#end()

" Airline -------------------------------------------------------------------- "
" let g:airline_theme='base16' " Theme of airline
let g:airline#extensions#tabline#enabled=1 " Enable bufferline.

" NerdTree ------------------------------------------------------------------- "
let NERDTreeShowHidden=1
let NERDTreeWinPos='left'    " Postion of nerdtree
let NERDTreeWinSize=30       " Size of nerdtree
map <Leader><leader>n :NERDTreeToggle<CR> " Shortcut for open nerdtree

" Ctrlp ---------------------------------------------------------------------- "
" let g:ctrlp_map='<c-p>'      " Open file with <c-p>
" let g:ctrlp_cmd='CtrlP'
" " nmap <Leader>b :CtrlPBuffer<CR>
" set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.ttf,*.o,*.out  " Linux.
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" let g:ctrlp_custom_ignore = {
"             \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"             \ 'file': '\v\.(exe|so|dll)$',
"             \ 'link': 'some_bad_symbolic_links',
"             \ }
" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" if executable('ag')
"   " Use Ag over Grep
"   set grepprg=ag\ --nogroup\ --nocolor
"   " Use ag in CtrlP for listing files.
"   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"   " Ag is fast enough that CtrlP doesn't need to cache
"   " let g:ctrlp_use_caching = 0
" endif

" IndentLine ----------------------------------------------------------------- "
let g:indentLine_enabled=1   " Settings for indentLine
let g:indentLine_char='|'
let g:indentLine_leadingSpaceEnabled=1
let g:indentLine_leadingSpaceChar='·'

" YouCompleteMe -------------------------------------------------------------- "
let g:ycm_server_python_interpreter='/usr/bin/python2.7'
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_confirm_extra_conf=1
let g:ycm_extra_conf_globlist=['~/workspace/*', '!~/*']
let g:ycm_filepath_completion_use_working_dir=1
" let g:ycm_global_ycm_extra_conf='~/.vim/source/'
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_add_preview_to_completeopt=1
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_filetype_blacklist={
            \ 'markdown' : 1,
            \ 'text' : 1,
            \ 'tagbar' : 1,
            \ 'infolog' : 1,
            \}

" Neocomplete ---------------------------------------------------------------- "
" let g:neocomplete#enable_at_startup = 1 " Start at startup of vim.
" let g:neocomplete#enable_smart_case = 1 " Smart case
" let g:neocomplete#sources#syntax#min_keyword_length = 3 " Keyword length.
" let g:acp_enableAtStartup = 0 " Disable AutoComplPop.
"
" " Define dictionary.
" let g:neocomplete#sources#dictionary#dictionaries = {
"     \ 'default' : '',
"     \ 'vimshell' : $HOME.'/.vimshell_hist',
"     \ 'scheme' : $HOME.'/.gosh_completions'
"         \ }
"
" " Define keyword.
" if !exists('g:neocomplete#keyword_patterns')
"     let g:neocomplete#keyword_patterns = {}
" endif
" let g:neocomplete#keyword_patterns['default'] = '\h\w*'
"
" " Plugin key-mappings.
" inoremap <expr><C-g>     neocomplete#undo_completion()
" inoremap <expr><C-l>     neocomplete#complete_common_string()
"
" " Recommended key-mappings.
" " <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
"   return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
"   " For no inserting <CR> key.
"   "return pumvisible() ? "\<C-y>" : "\<CR>"
" endfunction
" " <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" " <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" " Close popup by <Space>.
" "inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
"
" " AutoComplPop like behavior.
" "let g:neocomplete#enable_auto_select = 1
"
" " Shell like behavior(not recommended).
" "set completeopt+=longest
" "let g:neocomplete#enable_auto_select = 1
" "let g:neocomplete#disable_auto_complete = 1
" "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
"
" " Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"
" " Enable heavy omni completion.
" if !exists('g:neocomplete#sources#omni#input_patterns')
"   let g:neocomplete#sources#omni#input_patterns = {}
" endif
" "let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
" "let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
" "let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
"
" " For perlomni.vim setting.
" " https://github.com/c9s/perlomni.vim
" let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" Tagbar --------------------------------------------------------------------- "
let g:tagbar_ctags_bin='ctags'
let g:tagbar_sort=0
map <Leader><leader>t :TagbarToggle<CR>

" NerdCommenter -------------------------------------------------------------- "
let g:NERDSpaceDelims=1      " Put one space between comment and first word

" EasyMotion ----------------------------------------------------------------- "
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1 " Smart case
" let g:EasyMotion_startofline = 0 " Keep cursor colum when JK motion
" map f <Plug>(easymotion-prefix)
" map ff <Plug>(easymotion-s)
nmap <leader>w <Plug>(easymotion-overwin-w)
nmap <leader>e <Plug>(easymotion-overwin-e)
" map fh <Plug>(easymotion-linebackward)
map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)
" map fl <Plug>(easymotion-lineforward)
" map f. <Plug>(easymotion-repeat)

" fzf ------------------------------------------------------------------------ "
" let $FZF_DEFAULT_COMMAND = 'ag --hidden -g ""'
" let $FZF_DEFAULT_COMMAND = 'ag -g ""'
" nnoremap <C-p> :Files<Enter>
" let g:fzf_layout = { 'down': '~30%' }
" Use ripgrep instead of ag.
" command! -bang -nargs=* Rg
"   \ call fzf#vim#grep(
"   \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
"   \   <bang>0 ? fzf#vim#with_preview('up:60%')
"   \           : fzf#vim#with_preview('right:50%:hidden', '?'),
"   \   <bang>0)
" command! -bang -nargs=* Ag
"   \ call fzf#vim#ag(<q-args>,
"   \                 <bang>0 ? fzf#vim#with_preview('up:60%')
"   \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
"   \                 <bang>0)
" nnoremap <leader>o :BLines<Enter>

" Leaderf -------------------------------------------------------------------- "
" nnoremap <C-p> :LeaderfFile<Enter>   " Since leaderfFile is already mapped.
nnoremap <leader>o :LeaderfFunction<Enter>
" let g:Lf_WindowHeight=0.30
let g:Lf_CursorBlink = 0
let g:Lf_StlColorscheme = 'molokai'
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
let g:Lf_WildIgnore = {
        \ 'dir': ['.svn','.git','.hg'],
        \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
        \}
