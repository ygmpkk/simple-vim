" vim:set ft=vim;
augroup ui
  autocmd!
  " 默认关闭参考线
  let g:indentLine_enabled = 0

  " 状态条
  let g:airline_powerline_fonts = 1
  let g:Powerline_symbols = 'fancy'
  let g:airline_theme='base16_atelierheath'
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#buffer_nr_show = 1
  let g:airline_exclude_preview = 1

  " 高亮演示匹配括号
  let g:rbpt_colorpairs = [
        \ [158, '#00ceb3'],
        \ [081, '#00a3ff'],
        \ [214, '#ff8d00'],
        \ [123, '#3fffc9'],
        \ [045, '#29b9ec'],
        \ [190, '#bfec29'],
        \ [208, '#ffad00'],
        \ [117, '#48bde0'],
        \ ]
  let g:rbpt_max = 8
  let g:rbpt_loadcmd_toggle = 0

  au VimEnter * RainbowParenthesesToggle
  au Syntax * RainbowParenthesesLoadRound
  au Syntax c,cpp,go,h,java,python,javascript,typescript,scala,coffee RainbowParenthesesLoadSquare
  au Syntax c,cpp,go,h,java,python,javascript,typescript,scala,coffee,scss,less  RainbowParenthesesLoadBraces
augroup end

augroup common
  autocmd!

  " 启动界面
  let g:startify_skiplist = [
        \ 'COMMIT_EDITMSG',
        \ 'bundle/.*/doc',
        \ 'node_modules/*',
        \ 'bower_components/*',
        \ ]

  if filereadable(expand("~/.startify_bookmarks"))
    source ~/.startify_bookmarks
  endif 

  let g:startify_transformations = [
        \ ['.*vimrc$', 'vimrc'],
        \ ]
  " let g:startify_list_order = ['files', 'dir', 'bookmarks', 'sessions']
  let g:startify_enable_speciali = 0
  let g:startify_change_to_dir = 1
  let g:startify_change_to_vcs_root = 1
  let g:startify_session_autoload = 0
  let g:startify_session_delete_buffers = 1
  let g:startify_session_persistence = 1
  let g:startify_update_oldfiles = 1
  " 需要 base 的 ~/.profile 或 zsh 的 ~/.zprofile
  let g:startify_use_env = 1
  let g:startify_files_number = 20

  " 最后的位置
  let g:lastplace_ignore = "gitcommit,svn,hg,hgcommit,asciidoc,node_modules"

  " 文件导航
  let NERDTreeIgnore=['\.pyc','\~$','\.swp', 'node_modules']
  let NERDTreeRespectWildIgnore=1
  let g:NERDTreeIndicatorMapCustom = {
        \ "Modified"  : "✹",
        \ "Staged"    : "✚",
        \ "Untracked" : "✭",
        \ "Renamed"   : "➜",
        \ "Unmerged"  : "═",
        \ "Deleted"   : "✖",
        \ "Dirty"     : "✗",
        \ "Clean"     : "✔︎",
        \ "Unknown"   : "?"
        \ }

  " 眼球追踪
  let g:EasyMotion_smartcase = 1
  let g:EasyMotion_startofline = 0

  " 询问创建文件夹
  autocmd  BufNewFile  *  :call EnsureDirExists()
augroup end

augroup coding
  autocmd!
  " 注释
  let g:NERDSpaceDelims=1
  " tagbar
  let g:tagbar_type_go = {
        \ 'ctagstype' : 'go',
        \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
        \ ],
        \ 'sro' : '.',
        \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
        \ },
        \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
        \ },
        \ 'ctagsbin'  : 'gotags',
        \ 'ctagsargs' : '-sort -silent'
        \ }

  let g:tagbar_type_elixir = {
        \ 'ctagstype' : 'elixir',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'functions:functions',
        \ 'c:callbacks',
        \ 'd:delegates',
        \ 'e:exceptions',
        \ 'i:implementations',
        \ 'a:macros',
        \ 'o:operators',
        \ 'm:modules',
        \ 'p:protocols',
        \ 'r:records'
        \ ],
        \ 'sro': '.',
        \ 'kind2scope': {
        \ 'm': 'modules'
        \ },
        \ 'scope2kind': {
        \ 'modules': 'm'
        \ }
        \ }

  let g:tagbar_type_markdown = {
        \ 'ctagstype' : 'markdown',
        \ 'ctagsbin' : '~/.vim/bundle/markdown2ctags/markdown2ctags.py',
        \ 'ctagsargs' : '-f - --sort=yes',
        \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
        \ ],
        \ 'sro' : '|',
        \ 'kind2scope' : {
        \ 's' : 'section',
        \ },
        \ 'sort': 0,
        \ }

  " completion
  let g:asyncomplete_smart_completion = 1
  let g:asyncomplete_auto_popup = 1
  " let g:lsp_log_verbose = 1
  " let g:lsp_log_file = expand('/tmp/vim-lsp.log')
  " let g:asyncomplete_log_file = expand('/tmp/asyncomplete.log')

  " Linter
  " Use a slightly slimmer error pointer
  let g:ale_sign_error = '✖'
  hi ALEErrorSign guifg=#DF8C8C
  let g:ale_sign_warning = '⚠'
  hi ALEWarningSign guifg=#F2C38F

  " React
  let g:jsx_ext_required = 1

  " rcfiles
  autocmd BufRead,BufNewFile .{jscs,jshint,eslint,tslint,babel,prettie}rc set filetype=json
augroup end

" augroup
" augroup end
