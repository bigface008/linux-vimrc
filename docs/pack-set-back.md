# 扩展设置备份
这里保存了一些停用、弃用扩展的历史配置。其实我也不大明白我为啥不干脆删了他们。
## CtrlP
    let g:ctrlp_map='<c-p>'      " Open file with <c-p>
    let g:ctrlp_cmd='CtrlP'
    " nmap <Leader>b :CtrlPBuffer<CR>
    set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.ttf,*.o,*.out  " Linux.
    let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
    let g:ctrlp_custom_ignore = {
                \ 'dir':  '\v[\/]\.(git|hg|svn)$',
                \ 'file': '\v\.(exe|so|dll)$',
                \ 'link': 'some_bad_symbolic_links',
                \ }
    let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
    if executable('ag')
      " Use Ag over Grep
      set grepprg=ag\ --nogroup\ --nocolor
      " Use ag in CtrlP for listing files.
      let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
      " Ag is fast enough that CtrlP doesn't need to cache
      " let g:ctrlp_use_caching = 0
    endif

## NeoComplete
    let g:neocomplete#enable_at_startup = 1 " Start at startup of vim.
    let g:neocomplete#enable_smart_case = 1 " Smart case
    let g:neocomplete#sources#syntax#min_keyword_length = 3 " Keyword length.
    let g:acp_enableAtStartup = 0 " Disable AutoComplPop.
    
    " Define dictionary.
    let g:neocomplete#sources#dictionary#dictionaries = {
        \ 'default' : '',
        \ 'vimshell' : $HOME.'/.vimshell_hist',
        \ 'scheme' : $HOME.'/.gosh_completions'
            \ }
    
    " Define keyword.
    if !exists('g:neocomplete#keyword_patterns')
        let g:neocomplete#keyword_patterns = {}
    endif
    let g:neocomplete#keyword_patterns['default'] = '\h\w*'
    
    " Plugin key-mappings.
    inoremap <expr><C-g>     neocomplete#undo_completion()
    inoremap <expr><C-l>     neocomplete#complete_common_string()
    
    " Recommended key-mappings.
    " <CR>: close popup and save indent.
    inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
    function! s:my_cr_function()
      return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
      " For no inserting <CR> key.
      "return pumvisible() ? "\<C-y>" : "\<CR>"
    endfunction
    " <TAB>: completion.
    inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
    " <C-h>, <BS>: close popup and delete backword char.
    inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
    inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
    " Close popup by <Space>.
    "inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
    
    " AutoComplPop like behavior.
    "let g:neocomplete#enable_auto_select = 1
    
    " Shell like behavior(not recommended).
    "set completeopt+=longest
    "let g:neocomplete#enable_auto_select = 1
    "let g:neocomplete#disable_auto_complete = 1
    "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
    
    " Enable omni completion.
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
    
    " Enable heavy omni completion.
    if !exists('g:neocomplete#sources#omni#input_patterns')
      let g:neocomplete#sources#omni#input_patterns = {}
    endif
    "let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
    "let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
    "let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
    
    " For perlomni.vim setting.
    " https://github.com/c9s/perlomni.vim
    let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

## fzf
    let $FZF_DEFAULT_COMMAND = 'ag --hidden -g ""'
    let $FZF_DEFAULT_COMMAND = 'ag -g ""'
    nnoremap <C-p> :Files<Enter>
    let g:fzf_layout = { 'down': '~30%' }
    Use ripgrep instead of ag.
    command! -bang -nargs=* Rg
      \ call fzf#vim#grep(
      \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
      \   <bang>0 ? fzf#vim#with_preview('up:60%')
      \           : fzf#vim#with_preview('right:50%:hidden', '?'),
      \   <bang>0)
    command! -bang -nargs=* Ag
      \ call fzf#vim#ag(<q-args>,
      \                 <bang>0 ? fzf#vim#with_preview('up:60%')
      \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
      \                 <bang>0)
    nnoremap <leader>o :BLines<Enter>


## rainbow_parentheses.vim
    let g:rbpt_colorpairs = [
                \ ['brown',       'RoyalBlue3'],
                \ ['Darkblue',    'SeaGreen3'],
                \ ['darkgray',    'DarkOrchid3'],
                \ ['darkgreen',   'firebrick3'],
                \ ['darkcyan',    'RoyalBlue3'],
                \ ['darkred',     'SeaGreen3'],
                \ ['darkmagenta', 'DarkOrchid3'],
                \ ['brown',       'firebrick3'],
                \ ['gray',        'RoyalBlue3'],
                \ ['black',       'SeaGreen3'],
                \ ['darkmagenta', 'DarkOrchid3'],
                \ ['Darkblue',    'firebrick3'],
                \ ['darkgreen',   'RoyalBlue3'],
                \ ['darkcyan',    'SeaGreen3'],
                \ ['darkred',     'DarkOrchid3'],
                \ ['red',         'firebrick3'],
                \ ]
    let g:rbpt_max = 16
    let g:rbpt_loadcmd_toggle = 0
    au VimEnter * RainbowParenthesesToggle
    au Syntax * RainbowParenthesesLoadRound
    au Syntax * RainbowParenthesesLoadSquare
    au Syntax * RainbowParenthesesLoadBraces

