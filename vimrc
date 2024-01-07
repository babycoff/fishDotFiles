colorscheme gruvbox
syntax on " 自动语法高亮
set bg=dark
set nocompatible
set relativenumber
set number " 显示行号
set ruler
set cursorline " 突出显示当前行
set wrap " 所有行内容不超过当前窗口
set showcmd "显示命令
set wildmenu "开启命令提示
set incsearch " 输入搜索内容时就显示搜索结果
set hlsearch " 搜索时高亮显示被找到的文本
set ignorecase smartcase " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感

" 识别文件类型相关
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set mouse=a " 可以使用鼠标
set encoding=utf-8
set fileencodings=utf-8,gbk
let &t_ut='' "终端配色兼容性相关

set list " 显示不可见字符
set listchars=tab:▸\ ,trail:▫ " 调整显示不可见字符的策略

set colorcolumn=80

set expandtab "使用空格代替tab
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4 " 设定 tab 长度为 4
set textwidth=0
set indentexpr=
set autoindent

set scrolloff=5 " 上下预留5行

" 使得不同模式的光标有所区别
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set laststatus=2 " 总是显示状态栏
set autochdir " 执行任何命令时总以当前编辑文件所在目录为参考

" 重开同一个文件时光标回到原位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

set showmatch
set matchtime=5

"tab
nmap tn :tabnew<CR>
nmap tc :tabclose<CR>

" 方便移动
nmap J 5j
nmap K 5k
nmap W 5w
nmap B 5b
nmap E 5e
xmap J 5j
xmap K 5k
xmap W 5w
xmap B 5b
xmap E 5e

"netrw
let g:netrw_liststyle = 3
let g:netrw_winsize = 25
let g:netrw_altv = 1
nmap tt :Vex<CR>

"gtags setting
set cscopetag
set cscopeprg='gtags-cscope'
let GtagsCscope_Auto_Load = 1
let CtagsCscope_Auto_Map = 1
let GtagsCscope_Quiet = 1
let gtags_file=findfile("GTAGS", ";")
if !empty(gtags_file)
    exe "cs add" gtags_file
    endif