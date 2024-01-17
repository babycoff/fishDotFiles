" 这里配置路径后，自带主题就不能用了
"set runtimepath="~/fishDotFiles/vim"
"colorscheme gruvbox

" 设置leader为空格
let mapleader = "\<space>""

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

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes


" search down into subfolders
set path+=**

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

"set scrolloff=5 " 上下预留5行

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

"开启粘贴模式（禁止自动缩进）
set pastetoggle=<F5>

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

"tab
nmap <leader>tn :tabnew<CR>
nmap <leader>tc :tabclose<CR>

"use buffer is convenient when buffer is displayed by airline
nmap <leader>bp :bprevious<CR>
nmap <leader>bn :bnext<CR>
nmap <leader>bd :bdelete<CR>
nmap <leader>ba :badd<space>
nmap <leader>bf :bfirst<space>
nmap <leader>bl :blast<space>


" 方便移动
"nmap J 5j
"nmap K 5k
"nmap W 5w
"nmap B 5b
"nmap E 5e
"xmap J 5j
"xmap K 5k
"xmap W 5w
"xmap B 5b
"xmap E 5e

"netrw
"let g:netrw_liststyle = 3
"let g:netrw_winsize = 25
"let g:netrw_altv = 1
"nmap tt :Vex<CR>

"gtags setting
"set cscopetag
"set cscopeprg='gtags-cscope'
"let GtagsCscope_Auto_Load = 1
"let CtagsCscope_Auto_Map = 1
"let GtagsCscope_Quiet = 1
"let gtags_file=findfile("GTAGS", ";")
"if !empty(gtags_file)
"    exe "cs add" gtags_file
"    endif

" ----------plugin------------------------------------------------------------
"  Use naitive plugin management of Vim 8 to config plugins


" ---------------------------

" vim-startify: a start screen
" git clone https://github.com/mhinz/vim-startify.git --depth 1




" ---------------------------

" MRU: most recent used files
" use :MRU to open
" git clone https://github.com/yegappan/mru.git --depth 1




" ---------------------------

" auto-pairs: insert Insert or delete brackets, parens, and quotes in pair
" git clone https://github.com/LunarWatcher/auto-pairs.git --depth 1




" ---------------------------

" nerdtree: file manager beyond netwr
" git clone https://github.com/LunarWatcher/auto-pairs.git --depth 1
"nnoremap tt :NERDTreeToggle<CR>
" Open the existing NERDTree on each new tab.
" autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif




" ---------------------------

" nerdtree-git-plugin: display git status of files in nerdtree
" git clone https://github.com/Xuyuanp/nerdtree-git-plugin.git --depth 1




" ---------------------------

" gruvbox: theme
" git clone https://github.com/morhetz/gruvbox.git --depth 1




" ---------------------------

" airline: status config and theme
" git clone https://github.com/vim-airline/vim-airline.git --depth 1
" git clone https://github.com/vim-airline/vim-airline-themes.git --depth 1
"let g:airline_theme='deus'
"let g:airline#extensions#tabline#enabled = 1




" ---------------------------

" fugitive: use git command in vim, and work with airline
" git clone https://github.com/tpope/vim-fugitive.git --depth 1




" ---------------------------

" gitgutter: display git diff of line
" git clone https://github.com/airblade/vim-gitgutter.git --depth 1
" use ]c to go to next modified
" use [c to go to previous modified




" ---------------------------

" tagbar: display tag structure of file
" git clone https://github.com/preservim/tagbar.git --depth 1
"nmap T :TagbarToggle<CR>




" ---------------------------

" polyglot: maybe not better than treesitter's highlight
" git clone https://github.com/sheerun/vim-polyglot.git --depth 1




" ---------------------------

" cursorword: underlines the word under cursor
" git clone https://github.com/itchyny/vim-cursorword.git --depth 1




" ---------------------------

" cursorword: underlines the word under cursor
" git clone https://github.com/itchyny/vim-cursorword.git --depth 1

