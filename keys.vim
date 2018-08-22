" vim: set ft=vim;

" 这个布局是为HHKB设的
let mapleader = "`"
let maplocalleader = ","

" F系列快捷键
" 行号
nmap <silent> <F5> :set invnu<CR>
" 粘贴模式
nmap <silent> <F6> :set invpaste<CR>

" 目录树
nmap <silent> <F9> :NERDTreeToggle<CR>
" 标签树
nmap <silent> <F10> :TagbarToggle<CR>

" 默认快捷键
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

cmap bclear call DeleteHiddenBuffers()

cmap <C-t> <C-\>eAppendCurrentPath()<CR>
func! AppendCurrentPath()
    let current = getcmdline() . " " . expand("%:h") . "/"
    call setcmdpos(strlen(current)+1)
    return current
endfunc

" cmap W w
" cmap Q q
" cmap Wq wq
