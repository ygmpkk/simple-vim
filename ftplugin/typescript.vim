augroup config
  autocmd!
  " completion
  if executable('javascript-typescript-langserver')
    autocmd User lsp_setup call lsp#register_server({
          \'name': 'javascript-typescript-langserver',
          \'cmd': {server_info->['javascript-typescript-stdio']},
          \'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'tsconfig.json'))},
          \'whitelist': ['typescript'],
          \})
    autocmd FileType typescript setlocal omnifunc=lsp#complete
  endif

  " linter & fixer
  let g:ale_completion_enabled = 1
  let g:ale_lint_on_save = 1
  let g:ale_lint_on_text_changed = 0
  let g:ale_linters_explicit = 1
  " let g:ale_typescript_tsserver_use_global = 0

  " show status bar
  let g:airline#extensions#ale#enabled = 1

  let g:ale_linters = {'typescript': ['tslint', 'tsserver', 'typecheck']}
  let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace'], 'typescript': ['prettier', 'tslint']}
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
