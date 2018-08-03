" vim: set ft=vim;

" 这个布局是为HHKB设的
let mapleader = "`"
let maplocalleader = "\\"

" F系列快捷键
" {{{
" 重新Build YCM
" nmap <silent> <F2> :YcmForceCompileAndDiagnostics<CR>
" 快速搜索文件
nmap <silent> <F3> :CtrlSpace O<CR>
" 撤销树
nmap <silent> <F4> :GundoToggle<CR>
" 行号
nmap <silent> <F5> :set invnu<CR>
" 粘贴模式
nmap <silent> <F6> :set invpaste<CR>
" 格式化
nmap <silent> <F7> :Autoformat<CR>

" 目录树
nmap <silent> <F9> :NERDTreeToggle<CR>
" 标签树
nmap <silent> <F10> :TagbarToggle<CR>
" }}}

" 默认快捷键
" {{{
" 快速跳到下一个驼峰位置
nmap t` /[A-Z]<cr>

" 快速跳转到下一个单词的开始
" 快速跳转到下一个单词的结尾

" 设置切换Buffer快捷键"
nmap [b :bn<CR>
nmap ]b :bp<CR>

" 让 j, k 可以在 自动wrap的行中上下移动
vmap j gj
vmap k gk
nmap j gj
nmap k gk
nmap T :tabnew<cr>
" }}}

" Ctrl 快捷键系列
" {{{
" 分屏快速跳转
" nmap <silent> <c-h> <C-w>h
" nmap <silent> <c-j> <C-w>j
" nmap <silent> <c-k> <C-w>k
" nmap <silent> <c-l> <C-w>l
" }}}

" 插件快捷键配置
" {{{
" 多选择
let g:multi_cursor_start_key='<C-n>'
let g:multi_cursor_start_word_key='g<C-n>'
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" 有道字典
vmap <silent> <c-t> <Esc>:Ydv<CR>
nmap <silent> <c-t> <Esc>:Ydc<CR>
nmap <silent> <leader>yd :Yde<CR>

" 搜索
nmap <leader><space> :nohlsearch<CR>
nmap <silent><C-p> :CtrlSpace O<CR>
nmap <silent><leader>ph :CtrlSpace h<CR>
nmap <silent><leader>pH :CtrlSpace H<CR>
nmap <silent><leader>pb :CtrlSpace b<CR>
nmap <silent><leader>pB :CtrlSpace B<CR>
nmap <silent><leader>pw :CtrlSpace w<CR>
nmap <silent><leader>pW :CtrlSpace W<CR>

" 自动补全
let g:ycm_key_invoke_completion = '<C-p>'
let g:ycm_key_detailed_diagnostics = '<leader>d'

" Elixir

" 代码片段
let g:UltiSnipsExpandTrigger="<C-g>"
let g:UltiSnipsJumpForwardTrigger="<C-f>"
let g:UltiSnipsJumpBackwardTrigger="<C-b>"
" let g:UltiSnipsEditSplit="vertical"

" Leader 快捷键系列
nmap <silent> <leader>d <Plug>DashSearch
map <silent> <leader>s <Plug>Vsurround

vmap <d-c> :w !pbcopy<CR><CR>

" Buffer
" 映射<leader>num到num buffer
map <LocalLeader>1 :b 1<CR>
map <LocalLeader>2 :b 2<CR>
map <LocalLeader>3 :b 3<CR>
map <LocalLeader>4 :b 4<CR>
map <LocalLeader>5 :b 5<CR>
map <LocalLeader>6 :b 6<CR>
map <LocalLeader>7 :b 7<CR>
map <LocalLeader>8 :b 8<CR>
map <LocalLeader>9 :b 9<CR>

" 眼球追踪
" 跳转到当前光标前后的位置(w/b)
" 快捷键<leader><leader>w(即,,w)和<leader><leader>b(即,,b)
" 助记: word and back

" 搜索跳转(s)
" 快捷键<leader><leader>s(即,,s), 然后输入要搜索的字母, 这个跳转是双向的
" 助记: search
map <leader><leader>h <Plug>(easymotion-linebackward)
map <leader><Leader>j <Plug>(easymotion-j)
map <leader><Leader>k <Plug>(easymotion-k)
map <leader><leader>l <Plug>(easymotion-lineforward)
map  <Leader><Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader><Leader>L <Plug>(easymotion-overwin-line)
map  <Leader><Leader>w <Plug>(easymotion-bd-w)
nmap <Leader><Leader>w <Plug>(easymotion-overwin-w)
" 重复上一次操作, 类似repeat插件, 很强大
map <leader><leader>. <Plug>(easymotion-repeat)

" 启动器
nmap <leader>st :Startify<cr>
" 自动补全
nmap <leader>jd :YcmCompleter GoTo<CR>

" 单元测试
nmap <buffer> <LocalLeader>t :TestNearest<CR>
nmap <buffer> <LocalLeader>T :TestFile<CR>
nmap <buffer> <LocalLeader>a :TestSuite<CR>
nmap <buffer> <LocalLeader>l :TestLast<CR>
nmap <buffer> <LocalLeader>g :TestVisit<CR>

" 语言按键绑定
" au FileType go nmap <Leader>t <Plug>(go-test)
au FileType go nmap <buffer> <LocalLeader>r <Plug>(go-run)
au FileType go nmap <buffer> <LocalLeader>b <Plug>(go-build)
au FileType go nmap <buffer> <LocalLeader>c <Plug>(go-coverage)
" au FileType go nmap <buffer> <LocalLeader>gb :!gb build<CR>
" au FileType go nmap <buffer> <LocalLeader>gt :!gb test<CR>
" 文档
au FileType go nmap <buffer> <LocalLeader>ds <Plug>(go-def-split)
au FileType go nmap <buffer> <LocalLeader>dv <Plug>(go-def-vertical)
au FileType go nmap <buffer> <LocalLeader>dt <Plug>(go-def-tab)
au FileType go nmap <buffer> <LocalLeader>d <Plug>(go-doc)
au FileType go nmap <buffer> <LocalLeader>v <Plug>(go-doc-vertical)
" 实现
au FileType go nmap <buffer> <LocalLeader>i <Plug>(go-implements)
" 信息
au FileType go nmap <buffer> <LocalLeader>n <Plug>(go-info)
" 重命名
au FileType go nmap <buffer> <LocalLeader>e <Plug>(go-rename)
" 运行
au FileType go nmap <buffer> <Localleader>rt <Plug>(go-run-tab)
au FileType go nmap <buffer> <LocalLeader>rs <Plug>(go-run-split)
au FileType go nmap <buffer> <LocalLeader>rv <Plug>(go-run-vertical)

" Elm
" au FileType elm nmap <buffer> <LocalLeader>el <Plug>(ElmEvalLine)
" au FileType elm nmap <buffer> <LocalLeader>em <Plug>(ElmMakeCurrentFile)
" au FileType elm vmap <buffer> <LocalLeader>es <Plug>(ElmEvalSelection)

" API Blueprint
" autocmd FileType apiblueprint nmap <Leader>c :call GenerateRefract()<cr>
" }}}

" 自定义函数绑定快捷键
" {{{
" 清除隐藏的Buffers
" cnoreabbrev bclear call DeleteHiddenBuffers()
cmap bclear call DeleteHiddenBuffers()
" cnoreabbrev vspp call ()
" cnoreabbrev spp call DeleteHiddenBuffers()

" 创建目录
" cnoremap mk. !mkdir -p <c-r>=expand("%:h")<cr>/

" 当前目录
cmap <C-t> <C-\>eAppendCurrentPath()<CR>
func! AppendCurrentPath()
    let current = getcmdline() . " " . expand("%:h") . "/"
    call setcmdpos(strlen(current)+1)
    return current
endfunc
" }}}

cmap W w
cmap Q q
cmap Wq wq
