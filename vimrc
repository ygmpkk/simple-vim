""""""""""""
" 一般的配置
""""""""""""

" 设置隐藏
set hidden

" 配色
set t_Co=256

" 自动缩进的时候，缩进尺寸为 4 个空格。
set shiftwidth=4

" Tab 宽度为 4 个字符
set tabstop=4

set softtabstop=4

" 编辑时将所有 Tab 替换为空格。
" 该选项只在编辑时将 Tab 替换为空格，
" 如果打开一个已经存在的文件，
" 并不会将已有的 Tab 替换为空格。
" 如果希望进行这样的替换的话，可以使用这条命令“:retab”。
set et

" 当使用 et 将 Tab 替换为空格之后，
" 按下一个 Tab 键就能插入 4 个空格，
" 但要想删除这 4 个空格，就得按 4 下 Backspace，很不方便。
" 设置 smarttab 之后，就可以只按一下 Backspace 就删除 4 个空格了。
set smarttab
set smartindent

" use multiple of shiftwidth when indenting with '<' and '>'
set shiftround

" 打开拼写检查。
" 拼写有错的单词下方会有红色波浪线，
" 将光标放在单词上，
" 按 z= 就会出现拼写建议，
" 按 ]s 可以直接跳到下一个拼写错误处。
" set spell

" 不在单词中间断行。
" 设置了这个选项后，如果一行文字非常长，
" 无法在一行内显示完的话，
" 它会在单词与单词间的空白处断开，
" 尽量不会把一个单词分成两截放在两个不同的行里。
set lbr

" 自动缩进
set autoindent
set copyindent
" set cindent

" 显示行号
set number

" 分屏
set splitright
set splitbelow

" 历史记录数
set history=5000

"搜索逐字符高亮
set hlsearch
set incsearch

"语言设置
set iskeyword+=.
set iskeyword+=#
set iskeyword+=-
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030
set langmenu=zh_CN.UTF-8
set helplang=cn
scriptencoding utf-8

" 总是显示状态行
set cmdheight=2

" 保存全局变量
set viminfo='3000,n$HOME/.vim/files/info/viminfo
" set viminfo+=!

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

" 字符间插入的像素行数目

" 打开断行模块对亚洲语言支持。
" m 表示允许在两个汉字之间断行，即使汉字之间没有出现空格。
" B 表示将两行合并为一行的时候，汉字与汉字之间不要补空格。
" 该命令支持的更多的选项请参看用户手册。
set fo+=mB
" 关闭自动注释
set formatoptions-=o
autocmd FileType * setlocal formatoptions-=o

set sm
" 增强模式中的命令行自动完成操作
set wildmenu
set mousemodel=popup

" 去掉有关vi一致性模式，避免以前版本的一些bug和局限
set nocompatible

" 设想这样一个情况：当前光标前面有若干字母，
" 我们按下 i 键进入了 Insert 模式，
" 然后输入了 3 个字母，再按 5 下删除(Backspace)。
" 默认情况下，VIM 仅能删除我们新输入的 3 个字母，
" 然后喇叭“嘟嘟”响两声。
" 如果我们“set backspace=start”，
" 则可以在删除了新输入的 3 个字母之后，
" 继续向前删除原有的两个字符。
" 再设想一个情况：有若干行文字，我们把光标移到中间某一行的行首，
" 按 i 键进入 Insert 模式，
" 然后按一下 Backspace。
" 默认情况下，喇叭会“嘟”一声，然后没有任何动静。
" 如果我们“set backspace=eol”，
" 则可以删除前一行行末的回车，
" 也就是说将两行拼接起来。
" 当我们设置了自动缩进后，
" 如果前一行缩进了一定距离，
" 按下回车后，下一行也会保持相同的缩进。
" 默认情况下，我们不能在 Insert 模式下直接按 Backspace 删除行首的缩进。
" 如果我们“set backspace=indent”，则可以开启这一项功能。
" 上述三项功能，你可以根据自己的需要，选择其中一种或几种，用逗号分隔各个选项。
" 建议把这三个选项都选上。
set backspace=indent,eol,start

" 防止特殊符号无法正常显示。
" 在 Unicode 中，许多来自不同语言的字符，
" 如果字型足够近似的话，会把它们放在同一个编码中。
" 但在不同编码中，字符的宽度是不一样的。
" 例如中文汉语拼音中的 ā 就很宽，而欧洲语言中同样的字符就很窄。
" 当 VIM 工作在 Unicode 状态时，遇到这些宽度不明的字符时，
" 默认使用窄字符，这会导致中文的破折号“——”非常短，
" 五角星“★”等符号只能显示一半。
" 因此，我们需要设置 ambiwidth=double 来解决这个问题。
set ambiwidth=double

" 设置当文件被改动时自动载入
set autoread

set noshowmode

" 代码补全
" set completeopt=preview,menu
set completeopt=longest,menu

" 自动保存
set autowrite
set magic                   " 设置魔术
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏

" 去掉输入错误的提示声音
set noeb vb t_vb=

" 在处理未保存或只读文件的时候，弹出确认
set confirm

" 禁止生成临时文件
set nobackup
set noswapfile

" 搜索忽略大小写
set ignorecase smartcase

set linespace=0

" 使回格键（backspace）正常处理indent, eol, start等
" set backspace=2

" 指定在选择文本时，光标所在位置也属于被选中的范围。如果指定
" selection=exclusive 的话，可能会出现某些文本无法被选中的情况。
set selection=inclusive
set selectmode=mouse,key

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

" 高亮显示匹配的括号
set showmatch

" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1

" 开启文件类型自动识别，启用文件类型插件，启用针对文件类型的自动缩进。
filetype plugin indent on

" 显示配置
syntax on
syntax enable

" 高亮光标所在行
set cul
set cuc

" 启动的时候不显示那个援助乌干达儿童的提示
set shortmess=atI

" 当需要时redraw
set lazyredraw

" 不要图形按钮
set go=

" 显示标尺
set ruler

" 输入的命令显示出来，看的清楚些
set showcmd

" 启动显示状态行(1),总是显示状态行(2)
set laststatus=2

" 允许backspace和光标键跨越行边界(不建议)
" set whichwrap+=<,>,h,l
" 光标移动到buffer的顶部和底部时保持3行距离
" set scrolloff=3

" 允许折叠
set nofoldenable

" 手动折叠
set foldmethod=manual
" set foldcolumn=0
" set foldlevel=3

" 按键配置
set mouse=v

set modelines=1

" 忽略
set wildignore+=*/tmp/*,node_modules/*,bower_components/*,*.so,*.swp,*.zip,*.pyc,*.png,*.jpg,*.gif

" 自动切换到当前目录
" if !exists('g:koine_no_autochdir')
"     autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif
" endif

" autocmd 组
autocmd InsertLeave * se nocul  " 用浅色高亮当前行
autocmd InsertEnter * se cul    " 用浅色高亮当前行

" 一些函数
function! StripTrailingWhitespace()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " do the business:
    %s/\s\+$//e
    " clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" 关闭Buffer
function! CountListedBuffers()
    let cnt = 0
    for nr in range(1,bufnr("$"))
        if buflisted(nr) && ! empty(bufname(nr)) || getbufvar(nr, '&buftype') ==# 'help'
            let cnt += 1
        endif
    endfor
    return cnt
endfunction

function! CloseOnLast()
    if winnr('$')>1 || tabpagenr('$')>1
        q
    else
        :Startify
    endif
endfunction

function! DeleteHiddenBuffers()
    let tpbl=[]
    call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
    for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
        silent execute 'bwipeout' buf
    endfor
endfunction

function! EnsureDirExists ()
    let required_dir = expand("%:h")
    if !isdirectory(required_dir)
        call AskQuit("Directory '" . required_dir . "' doesn't exist.", "&Create it?")

        try
            call mkdir( required_dir, 'p' )
        catch
            call AskQuit("Can't create '" . required_dir . "'", "&Continue anyway?")
        endtry
    endif
endfunction

function! AskQuit (msg, proposed_action)
    if confirm(a:msg, "&Quit?\n" . a:proposed_action) == 1
        exit
    endif
endfunction

" 剪切版
if has('clipboard')
    if has('unnamedplus')  " When possible use + register for copy-paste
        set clipboard=unnamed,unnamedplus
    else         " On mac and Windows, use * register for copy-paste
        set clipboard=unnamed
    endif
endif

if has('gui_running')
    au GUIEnter * set vb t_vb=

    if filereadable(expand("~/.vim/gui.vim"))
        source ~/.vim/gui.vim
    endif
endif

" 快捷键
" 命令模式移动光标
if (!has ("gui_win32"))
    cmap <c-a> <Home>
    cmap <c-e> <End>
endif

" Plugins
function! Cond(cond, ...)
    let opts = get(a:000, 0, {})
    return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

call plug#begin('~/.vim/bundle')

""""""
" 通用
""""""

" 启动器
Plug 'mhinz/vim-startify'
" 注释
Plug 'scrooloose/nerdcommenter'
" 目录树
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
" 眼球追踪
Plug 'easymotion/vim-easymotion'
" 等号缩进
" Plug 'junegunn/vim-easy-align'
" 多焦点选择
" Plug 'terryma/vim-multiple-cursors'
" 搜索
Plug 'vim-ctrlspace/vim-ctrlspace'
" 状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" 补全和替换
Plug 'Raimondi/delimitMate'
" 有道字典
Plug 'ianva/vim-youdao-translater'
" 自动格式化
" Plug 'Chiel92/vim-autoformat', {'on': 'Autoformat'}
" 打开文件最后的位置
Plug 'dietsche/vim-lastplace'
" Ansi文档查看
" Plug 'powerman/vim-plugin-AnsiEsc'
" 任务
" Plug 'davidoc/taskpaper.vim'
" Plug 'xolox/vim-misc'
" Plug 'xolox/vim-notes'
" Font
Plug 'powerline/fonts'
" Color
Plug 'flazz/vim-colorschemes'
" Search
Plug 'rking/ag.vim'
" Files
" Plug 'vim-scripts/FuzzyFinder'
""""""
" 写作
""""""
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
" Plug 'jszakmeister/markdown2ctags' , {'for': 'markdown'}
" Plug 'junegunn/goyo.vim'
" Plug 'amix/vim-zenroom2'
" Plug 'IN3D/vim-raml', {'for': 'raml'}
Plug 'leshill/vim-json', {'for': 'json'}

""""""
" 编程
""""""
" Plug 'ygmpkk/vim-header-comment'
" Plug 'janko-m/vim-test'
" 阅读代码，mark高亮
Plug 'jrosiek/vim-mark'
" 括号高亮
Plug 'kien/rainbow_parentheses.vim'
" Command
" Plug 'tpope/vim-dispatch'
" 标签
Plug 'majutsushi/tagbar'
" Dash配套
" Plug 'rizzatti/funcoo.vim'
" Dash搜索
" Plug 'rizzatti/dash.vim'
" 语法分析
Plug 'scrooloose/syntastic'
" 补全
Plug 'tpope/vim-surround'
Plug 'kien/tabman.vim'
" Git插件
" Plug 'tpope/vim-fugitive'
" Git修改指示
Plug 'airblade/vim-gitgutter'
" Git撤销树
" Plug 'vim-scripts/Gundo'
" Plug 'rhysd/conflict-marker.vim'

" 代码提示
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all'}

" Golang
" Plug 'fatih/vim-go'
" " Erlang
" Plug 'vim-erlang/vim-erlang-runtime', {'for': 'erlang'}
" Plug 'vim-erlang/vim-erlang-compiler', {'for': 'erlang'}
" Plug 'vim-erlang/vim-erlang-omnicomplete', {'for': 'erlang'}
" Plug 'vim-erlang/vim-erlang-tags', {'for': 'erlang'}
" Plug 'ten0s/syntaxerl', {'for': 'erlang'}
" Elixir
" Plug 'elixir-lang/vim-elixir', {'for': 'elixir'}
" Plug 'thinca/vim-ref', {'for': 'elixir'}
" 前端
Plug 'editorconfig/editorconfig-vim'
" Plug 'ruanyl/vim-fixmyjs', {'on': 'Fixmyjs'}
" Plug 'MattesGroeger/vim-bookmarks'
" Javascript
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'w0rp/ale'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'rhysd/npm-debug-log.vim'
Plug 'cdata/vim-tagged-template'

Plug 'ternjs/tern_for_vim'
Plug 'flowtype/vim-flow', {'do': 'npm install'}
Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/jsdoc-syntax.vim'
Plug 'othree/jspc.vim'
Plug 'isRuslan/vim-es6'
Plug 'jelera/vim-javascript-syntax'
Plug 'glanotte/vim-jasmine'
Plug 'heavenshell/vim-jsdoc'
Plug 'mxw/vim-jsx'
Plug 'millermedeiros/vim-esformatter'
Plug 'prettier/vim-prettier', {'do': 'yarn install'} 
" Plug 'kchmck/vim-coffee-script', {'for': 'coffee'}

" Plug 'Quramy/tsuquyomi', {'for': 'typescript'}
" Plug 'clausreinke/typescript-tools.vim', { 'do': 'npm install' }
" Plug 'leafgarland/typescript-vim', {'for': 'typescript'}
" Plug 'HerringtonDarkholme/yats.vim', {'for': 'typescript'}
" Html
Plug 'othree/html5.vim', {'for': ['html', 'ejs', 'hbs']}
Plug 'docunext/closetag.vim', {'for': ['html', 'jsx', 'javascript.jsx', 'ejs', 'hbs']}
Plug 'mattn/emmet-vim', {'for': ['html', 'ejs', 'hbs']}
" Css
Plug 'groenewege/vim-less', {'for': 'less'}
Plug 'hail2u/vim-css3-syntax', {'for': ['css', 'less', 'sass', 'scss']}
" Plug 'chemzqm/wxapp.vim'
" Plug 'asins/vim-dict'
" Vue
" Plug 'posva/vim-vue'
" Elm
" Plug 'elmcast/elm-vim', {'for': 'elm'}
" Ember
" Plug 'mustache/vim-mustache-handlebars', {'for': 'html.handlebars'}
" Plug 'joukevandermaas/vim-ember-hbs', {'for': 'html.handlebars'}
" Python
" Plug 'klen/python-mode', {'for': 'python'}
" Jenkinsfile
Plug 'martinda/Jenkinsfile-vim-syntax'

""""""
" 其它
""""""

" Record worktime
Plug 'wakatime/vim-wakatime'

" FlowChart
" Plug 'vim-scripts/DrawIt'

" Plug 'vim-scripts/L9'
" " API Blurprint
" Plug 'kylef/apiblueprint.vim'
" " Shell
" Plug 'Shougo/vimproc.vim'
" Plug 'Shougo/vimshell.vim'
call plug#end()
" test

source ~/.vim/config.vim
source ~/.vim/keys.vim

colorscheme jellybeans

set cursorline
