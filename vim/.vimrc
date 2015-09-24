" 显示行号 
set number

" 语法高亮
syntax on

"依文件类型设置自动缩进
filetype indent plugin on

" 设置缩进长度
set tabstop=2
set shiftwidth=4
set softtabstop=4
set noexpandtab
set smarttab

" 编码设置
set encoding=utf-8
set fenc=utf-8
set fileencodings=utf-8,gb2312,gb18030,big5

"设置背景色
"set background=gray

"设置颜色主题
"colorscheme monokai

" 设置透明度
" set transparency=10

" 高亮显示匹配的括号 
set showmatch

" 匹配括号高亮的时间（单位是十分之一秒
set matchtime=5

"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt+=longest

"离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"

"上下左右键的行为
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

