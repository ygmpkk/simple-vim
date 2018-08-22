" vim: set ft=vim;

" 光标样式
" n 默认模式
" v 虚拟模式
" c 命令模式
set guicursor=n-v-c:hor10-Cursor
set guicursor+=i:hor10-Cursor
" set guicursor+=ve:hor10-Cursor
set guicursor+=o:hor10-Cursor
set guicursor+=i-ci:hor10-Cursor
set guicursor+=r-cr:hor10-Cursor
" set guicursor+=cm:hor10-Cursor

" 图形字体
" set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h11.5
" set guifontwide=DejaVu\ Sans\ Mono\ for\ Powerline:h11.5
" set guifont=Source_Code_Pro:h11.5
" set guifontwide=Source_Code_Pro:h11.5

" CtrlSpace
" let g:CtrlSpaceSymbols = { "File": "◯", "CTab": "▣", "Tabs": "▢" }


" 个人设置
" gui模式下
" 并修改行为
" :q => exit buffer
" :qa => exit all buffer
" :wqa => save and exit all buffer
" cnoreabbrev wqa wa<bar>bd<bar>:call CloseOnLast()<CR>
" cnoreabbrev q bd<bar>:call CloseOnLast()<CR>
" 重新映射新的命令
" cnoreabbrev q call CloseOnLast()
" cnoreabbrev qa on<bar>call CloseOnLast()
" cnoreabbrev wq w<bar>call CloseOnLast()
" cnoreabbrev wqa wa<bar>on<bar>call CloseOnLast()
