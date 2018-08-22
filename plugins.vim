" Plugins
function! Cond(cond, ...)
    let opts = get(a:000, 0, {})
    return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

call plug#begin('~/.vim/bundle')

""""""
" 通用
""""""

" UI
Plug 'flazz/vim-colorschemes'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'powerline/fonts'
Plug 'kien/rainbow_parentheses.vim'
Plug 'majutsushi/tagbar'

" Common
Plug 'mhinz/vim-startify'
Plug 'dietsche/vim-lastplace'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'easymotion/vim-easymotion'
Plug 'ianva/vim-youdao-translater'

" Coding
Plug 'scrooloose/nerdcommenter'
Plug 'editorconfig/editorconfig-vim'
Plug 'Raimondi/delimitMate'
Plug 'jrosiek/vim-mark'
Plug 'janko-m/vim-test'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter', {'on': 'GitGutterToggle'}
" Plug 'Shougo/denite.nvim'

" completion
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-lsp.vim', {'do': 'npm i -g typescript javascript-typescript-langserver'}

" Linter
Plug 'w0rp/ale'

" Javascript & Typescript
Plug 'millermedeiros/vim-esformatter'
" Plug 'othree/yajs.vim'
" Plug 'HerringtonDarkholme/yats.vim'

" Plug 'wakatime/vim-wakatime'
call plug#end()
