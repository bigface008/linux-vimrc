" Plugin
call plug#begin('~/.vim/plugged')
" Basic
Plug 'terryma/vim-multiple-cursors'
" Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
" UI
" Plug 'itchyny/lightline.vim'
" Plug 'mgee/lightline-bufferline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'majutsushi/tagbar'
Plug 'Yggdroot/indentLine'
" Color Themes
" Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'
Plug 'icymind/neosolarized'
" Plug 'KabbAmine/yowish.vim'
" Plug 'cormacrelf/vim-colors-github'
" Plug 'joshdick/onedark.vim'
" Auto Complete
Plug 'ludovicchabant/vim-gutentags'
Plug 'valloric/youcompleteme'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'shougo/echodoc.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Quick search
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Git
Plug 'airblade/vim-gitgutter'
" Syntax
" Plug 'kien/rainbow_parentheses.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
" Other
Plug 'iamcco/markdown-preview.vim'
call plug#end()

" Airline -------------------------------------------------------------------- "
" let g:airline_theme='gruvbox'        " Theme of airline
let g:airline#extensions#tabline#enabled=1 " Enable bufferline.

" Lightline ------------------------------------------------------------------ "
" let g:lightline = {
"             \ 'colorscheme': 'molokai',
"             \ }
" let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
" let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
" let g:lightline.component_type   = {'buffers': 'tabsel'}
" let g:lightline#bufferline#show_number=2
" let g:lightline#bufferline#min_buffer_count=1
" nmap <Leader>1 <Plug>lightline#bufferline#go(1)
" nmap <Leader>2 <Plug>lightline#bufferline#go(2)
" nmap <Leader>3 <Plug>lightline#bufferline#go(3)
" nmap <Leader>4 <Plug>lightline#bufferline#go(4)
" nmap <Leader>5 <Plug>lightline#bufferline#go(5)
" nmap <Leader>6 <Plug>lightline#bufferline#go(6)
" nmap <Leader>7 <Plug>lightline#bufferline#go(7)
" nmap <Leader>8 <Plug>lightline#bufferline#go(8)
" nmap <Leader>9 <Plug>lightline#bufferline#go(9)
" nmap <Leader>0 <Plug>lightline#bufferline#go(10)

" NerdTree ------------------------------------------------------------------- "
let NERDTreeShowHidden=1
let NERDTreeWinPos='left'    " Postion of nerdtree
let NERDTreeWinSize=30       " Size of nerdtree
map <leader><leader>e :NERDTreeToggle<CR> " Shortcut for open nerdtree

" IndentLine ----------------------------------------------------------------- "
let g:indentLine_enabled=1   " Settings for indentLine
let g:indentLine_char='|'
let g:indentLine_leadingSpaceEnabled=1
let g:indentLine_leadingSpaceChar='·'

" YouCompleteMe -------------------------------------------------------------- "
" Since this part is relatived with autocomplete.
set tags=./.tags;,.tags,tags,/home/dashi/workspace/lib_tags/systags
let g:ycm_server_python_interpreter='/usr/bin/python2.7'
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_confirm_extra_conf=1
let g:ycm_extra_conf_globlist=['~/workspace/*', '!~/*']
let g:ycm_filepath_completion_use_working_dir=1
" let g:ycm_global_ycm_extra_conf='~/.vim/source/'
" let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_add_preview_to_completeopt=0
let g:ycm_min_num_identifier_candidate_chars=2
" let g:ycm_autoclose_preview_window_after_completion=1
set completeopt=menu,menuone
let g:ycm_complete_in_strings=1
let g:ycm_semantic_triggers =  {
            \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
            \ 'cs,lua,javascript': ['re!\w{2}'],
            \ }
let g:ycm_filetype_whitelist = { 
            \ "h":1,
            \ "hpp":1,
            \ "c":1,
            \ "cpp":1, 
            \ "objc":1,
            \ "sh":1,
            \ "zsh":1,
            \ "zimbu":1,
            \ }
let g:ycm_filetype_blacklist={
            \ 'markdown' : 1,
            \ 'text' : 1,
            \ 'tagbar' : 1,
            \ 'infolog' : 1,
            \}
" let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']

" Tagbar --------------------------------------------------------------------- "
let g:tagbar_ctags_bin='unctags'
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

" Leaderf -------------------------------------------------------------------- "
" nnoremap <C-p> :LeaderfFile<Enter>   " Since leaderfFile is already mapped.
nnoremap <leader>o :LeaderfFunction<Enter>
" let g:Lf_WindowHeight=0.30
let g:Lf_CursorBlink = 0
let g:Lf_Ctags="unctags"
let g:Lf_StlColorscheme = 'gruvbox'
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
let g:Lf_ReverseOrder = 1
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]','*.pdf'
            \ ,'*.pptx','*.docx','*.zip','*.tar.gz','*.tgz','*.rar','*.xls','*.xlsx'
            \ ,'*.doc','*.odt','*.db','*.dbc','*dat','*.deb','*.out','*.ppt','*.png'
            \ ,'*.jpg','*.ttf']
            \}

" vim-gutentags
let g:gutentags_ctags_executable = 'unctags'
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
let g:gutentags_ctags_tagfile = '.tags'
let s:vim_tags = expand('~/workspace/cache/tags')
let g:gutentags_cache_dir = s:vim_tags

let g:gutentags_ctags_extra_args = ['--fields=+lniazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

if !isdirectory(s:vim_tags)
    silent! call mkdir(s:vim_tags, 'p')
endif

" echodoc -------------------------------------------------------------------- "
let g:echodoc_enable_at_startup = 1

" Ultisnips ------------------------------------------------------------------ "
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsSnippetDirectories=["~/.vim/plugged/vim-snippets/UltiSnips", "~/.vim/plugged/vim-snippets/snippets"]

" vim-cpp-enhanced-highlight ------------------------------------------------- "
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1

" Github Theme
let g:github_colors_soft = 1
