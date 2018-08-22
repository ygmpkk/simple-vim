augroup config
  autocmd!
  " completion
  " debug
  " let g:lsp_log_verbose = 1
  " let g:lsp_log_file = expand('/tmp/vim-lsp.log')
  " let g:asyncomplete_log_file = expand('/tmp/asyncomplete.log')

  if executable('javascript-typescript-langserver')
    autocmd User lsp_setup call lsp#register_server({
          \'name': 'javascript-typescript-langserver',
          \'cmd': {server_info->['javascript-typescript-stdio']},
          \'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'package.json'))},
          \'whitelist': ['javascript'],
          \})
    autocmd FileType javascript setlocal omnifunc=lsp#complete
    echom 'hello'
  endif

  " linter & fixer
  let g:ale_completion_enabled = 1
  let g:ale_lint_on_save = 1
  let g:ale_lint_on_text_changed = 0
  let g:ale_linters_explicit = 1

  " show status bar
  let g:airline#extensions#ale#enabled = 1

  let g:ale_linters = {'javascript': ['eslint', 'flow']}
  let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace'], 'javascript': ['prettier', 'eslint']}
augroup end

augroup maps
  autocmd!

  " ES format
  nmap <silent> <leader>es :Esformatter<CR>
  vmap <silent> <leader>es :EsformatterVisual<CR>

  " show linter
  nmap <silent> <C-k> <Plug>(ale_previous_wrap)
  nmap <silent> <C-j> <Plug>(ale_next_wrap)
augroup end
