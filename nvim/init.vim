syntax on " 自动语法高亮
set number " 显示行号
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

set expandtab "使用空格代替tab
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4 " 设定 tab 长度为 4
set textwidth=0
set indentexpr=

set list " 显示不可见字符
set listchars=tab:▸\ ,trail:▫ " 调整显示不可见字符的策略

set scrolloff=5 " 上下预留5行

" 使得不同模式的光标有所区别
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set laststatus=2 " 总是显示状态栏
set autochdir " 执行任何命令时总以当前编辑文件所在目录为参考

" 重开同一个文件时光标回到原位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" 切换标签快捷键
nmap tn :tabnext<CR>
nmap tp :tabprevious<CR>
nmap te :tabe<CR>
nmap tc :tabclose<CR>

" 分屏快捷键
nmap sl :set splitright<CR>:vsplit<CR>
nmap sh :set nosplitright<CR>:vsplit<CR>
nmap sk :set nosplitbelow<CR>:split<CR>
nmap sj :set splitbelow<CR>:split<CR>

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

" 设置leader为空格
let mapleader = "\<space>"







" ============================================================
" ============================================================
" vim-plug 安装插件
" ============================================================
" ============================================================
call plug#begin('~/.config/nvim/plugged')

" ======
" ====== 美化
Plug 'vim-airline/vim-airline' "状态栏插件
Plug 'vim-airline/vim-airline-themes' "状态栏插件主题包
Plug 'connorholyday/vim-snazzy' "snazzy主题高亮插件

" ======
" ====== markdown
Plug 'iamcco/markdown-preview.nvim', {
      \'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']
      \} "markdown预览
Plug 'dhruvasagar/vim-table-mode' "方便输入markdown表格


" ======
" ====== nerdtree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } " 目录树插件
Plug 'Xuyuanp/nerdtree-git-plugin' "nerdTree git插件
Plug 'ryanoasis/vim-devicons' "nerdtree文件图标
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' "nerdtree syntax

" ======
" ====== 语法
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' } "查看函数列表
Plug 'sheerun/vim-polyglot' "语法高亮插件
Plug 'neoclide/coc.nvim', { 'branch': 'release' } "自动补全
Plug 'itchyny/vim-cursorword' "高亮光标所在单词
Plug 'honza/vim-snippets' "代码片段库（需配合代码片段补全插件，这里配合coc.snippets）
Plug 'preservim/nerdcommenter' "简化注释操作
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } "go功能插件

" ======
" ====== fzf集成
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'

" ======
" ====== 其他
Plug 'kshenoy/vim-signature' "书签
Plug 'jiangmiao/auto-pairs' "自动补全括号
Plug 'yegappan/mru' "显示最近打开文件 输入MRU打开
Plug 'mbbill/undotree' "可视化显示vim的undo
Plug 'tpope/vim-surround' "方便添加周围符号
Plug 'mhinz/vim-startify' "开始欢迎界面
Plug 'tmhedberg/simpylfold' "方便折叠代码
" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'} "高能高亮光标所在单词


call plug#end()
" ============================================================
" ============================================================




" ===
" === snazzy
" ===
let g:SnazzyTransparent = 1
color snazzy




" ===
" === vim-airline-themes
" ===
let g:airline_theme='deus'





" ===
" === nerdTree
" ===
nmap tt :NERDTreeToggle<CR>




" ===
" === Taglist
" ===
nmap T :TagbarOpenAutoClose<CR>




" ===
" === nerdtree-git
" ===
let g:NERDTreeIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ "Unknown"   : "?"
            \ }




" ===
" === fzf and ag
" ===
nmap <leader>p :Files<CR>
nmap <leader>P :Ag<CR>
nmap <leader>e :Buffers<CR>
let g:fzf_action = { 'ctrl-e': 'edit' }





" ===
" === undotree
" ===
nmap <leader>u :UndotreeToggle<CR>





" ===
" === vim-surround用法
" ===
" === normal mode
" ds   : delete
" cs   : replace
" ysiw : surround one word
" yss  : surround one line
" === visual mode
" S    : surround selected words
" ===when operate to tags like '<h1>'
" ===use 'dst' instead of 'ds'
" ===( means '(  )'
" ===) means '()'





" ===
" === nerdcommenter
" ===
" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
" ===========nerdcommenter default key map tutorial
" [count]<leader>cc |NERDCommenterComment|
" Comment out the current line or text selected in visual mode.
" [count]<leader>cn |NERDCommenterNested|
" Same as cc but forces nesting.
" [count]<leader>c<space> |NERDCommenterToggle|
" Toggles the comment state of the selected line(s). If the topmost selected line is commented, all selected lines are uncommented and vice versa.
" [count]<leader>cm |NERDCommenterMinimal|
" Comments the given lines using only one set of multipart delimiters.
" [count]<leader>ci |NERDCommenterInvert|
" Toggles the comment state of the selected line(s) individually.
" [count]<leader>cs |NERDCommenterSexy|
" Comments out the selected lines with a pretty block formatted layout.
" [count]<leader>cy |NERDCommenterYank|
" Same as cc except that the commented line(s) are yanked first.
" <leader>c$ |NERDCommenterToEOL|
" Comments the current line from the cursor to the end of line.
" <leader>cA |NERDCommenterAppend|
" Adds comment delimiters to the end of line and goes into insert mode between them.
" |NERDCommenterInsert|
" Adds comment delimiters at the current cursor position and inserts between. Disabled by default.
" <leader>ca |NERDCommenterAltDelims|
" Switches to the alternative set of delimiters.
" [count]<leader>cl |NERDCommenterAlignLeft [count]<leader>cb |NERDCommenterAlignBoth
" Same as |NERDCommenterComment| except that the delimiters are aligned down the left side (<leader>cl) or both sides (<leader>cb).
" [count]<leader>cu |NERDCommenterUncomment|
" Uncomments the selected line(s).





" ======vim-signature tutorial
  " mx           Toggle mark 'x' and display it in the leftmost column
  " dmx          Remove mark 'x' where x is a-zA-Z
  "
  " m,           Place the next available mark
  " m.           If no mark on line, place the next available mark. Otherwise, remove (first) existing mark.
  " m-           Delete all marks from the current line
  " m<Space>     Delete all marks from the current buffer
  " ]`           Jump to next mark
  " [`           Jump to prev mark
  " ]'           Jump to start of next line containing a mark
  " ['           Jump to start of prev line containing a mark
  " `]           Jump by alphabetical order to next mark
  " `[           Jump by alphabetical order to prev mark
  " ']           Jump by alphabetical order to start of next line having a mark
  " '[           Jump by alphabetical order to start of prev line having a mark
  " m/           Open location list and display marks from current buffer
  "
  " m[0-9]       Toggle the corresponding marker !@#$%^&*()
  " m<S-[0-9]>   Remove all markers of the same type
  " ]-           Jump to next line having a marker of the same type
  " [-           Jump to prev line having a marker of the same type
  " ]=           Jump to next line having a marker of any type
  " [=           Jump to prev line having a marker of any type
  " m?           Open location list and display markers from current buffer
  " m<BS>        Remove all markers






" ===
" === tutorial of vim-simpylfold
" ===
" zf : create a fold in selected lines
" zd : delete a fold at cursor
" zo : open doc fold
" zc : close doc fold
let g:SimpylFold_docstring_preview = 0 "自动预览折叠文档内容
let g:SimpylFold_fold_docstring = 1 "自动折叠文档内容
let g:SimpylFold_fold_import = 1 "自动折叠import
let g:SimpylFold_fold_blank = 0 "折叠空白





" ===
" === markdownpreview
" ===
nmap <leader>m <Plug>MarkdownPreviewToggle
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0
" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1
" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0
" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0
" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0
" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''
" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''
" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0
" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''
" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }
" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''
" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''
" use a custom port to start server or random for empty
let g:mkdp_port = ''
" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'
" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']
" ===
" ===
" ===







" ===
" === vim-table-mode
" ===
" To start using the plugin in the on-the-fly mode use :TableModeToggle mapped to <Leader>tm by default (which means \ t m if you didn't override the by :let mapleader = ',' to have , t m).
" Tip: You can use the following to quickly enable / disable table mode in insert mode by using || or __:
function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
          \ <SID>isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ <SID>isAtStartOfLine('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'











" ===
" === vim-go
" ===
"调整格式化工具为golines
let g:go_fmt_command = "golines"
let g:go_fmt_options = {
    \ 'golines': '-m 128',
    \ }
"关闭一些和已有插件冲突的快捷键
let g:go_def_mapping_enabled = 0
let g:go_doc_keywordprg_enabled = 0












" ===
" === coc.nvim
" ===
let g:coc_global_extensions = [
            \ 'coc-json',
            \ 'coc-vimlsp',
            \ 'coc-sh',
            \ 'coc-clangd',
            \ 'coc-cmake',
            \ 'coc-go',
            \ 'coc-html',
            \ 'coc-htmldjango',
            \ 'coc-css',
            \ 'coc-markdownlint',
            \ 'coc-pyright',
            \ 'coc-phpls',
            \ 'coc-tsserver',
            \ 'coc-eslint',
            \ 'coc-yaml',
            \ 'coc-xml',
            \ 'coc-omnisharp',
            \ 'coc-actions',
            \ 'coc-powershell',
            \ 'coc-snippets',
            \ 'coc-yank',
            \ 'coc-translator',
            \]
" TextEdit might fail if hidden is not set
set hidden
" Some servers have issues with backup files
set nobackup
set nowritebackup
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" 使用tab实现补全选择
imap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
" 使用回车选择补全项目 而不是跳转
imap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
" 使用这两个快捷键上下查找报错点
nmap <silent> <leader>[ <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>] <Plug>(coc-diagnostic-next)
" GoTo code navigation.
" 定义声明导航
" 注意要使用ctrl+o返回
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use leader k to show documentation in preview window.
" 使用leader k显示文档
nmap <silent> <leader>k :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
" Symbol renaming.
" 重命名变量
nmap <leader>rn <Plug>(coc-rename)
" Formatting selected code.
" 代码格式化
" 前文nmap了一个相同的快捷键用来使用ag
vmap <leader>f  <Plug>(coc-format-selected)
" space+d 查看错误列表
nmap <leader>d :CocDiagnostics<CR>
" Remap for do codeAction of selected region
" 使用leader a对代码进行进一步操作
" <leader>a for the current selected range
" <leader>aw for the current word
" <leader>aas for the current sentence
" <leader>aap for the current paragraph
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

" open yank history
nmap <leader>y  :<C-u>CocList -A --normal yank<cr>


"coc-translator
" popup
vmap tr <Plug>(coc-translator-pv)
" nmap tr <Plug>(coc-translator-p)
" " echo
" nmap <Leader>e <Plug>(coc-translator-e)
" vmap <Leader>e <Plug>(coc-translator-ev)
" " replace
" nmap <Leader>r <Plug>(coc-translator-r)
" vmap <Leader>r <Plug>(coc-translator-rv)

" ===
" ===
" ===
