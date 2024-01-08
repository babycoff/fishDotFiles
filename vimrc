" 这里配置路径后，自带主题就不能用了
"set runtimepath="~/fishDotFiles/vim"
colorscheme gruvbox

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
"set autoindent

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

"开启粘贴模式（禁止自动缩进）
set pastetoggle=<F5>

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
nnoremap tt :NERDTreeToggle<CR>
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
let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1




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
nmap <leader>t :TagbarToggle<CR>




" ---------------------------

" polyglot: maybe not better than treesitter's highlight
" git clone https://github.com/sheerun/vim-polyglot.git --depth 1




" ---------------------------

" cursorword: underlines the word under cursor
" git clone https://github.com/itchyny/vim-cursorword.git --depth 1




" ---------------------------

" cursorword: underlines the word under cursor
" git clone https://github.com/itchyny/vim-cursorword.git --depth 1




" ---------------------------

" bufferline: display buffer info in status
" git clone https://github.com/bling/vim-bufferline.git --depth 1




" ---------------------------

" coc.nvim: for auto completion
" git clone --branch release https://github.com/neoclide/coc.nvim.git --depth=1


" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
"inoremap <silent><expr> <TAB>
"      \ coc#pum#visible() ? coc#pum#next(1) :
"      \ CheckBackspace() ? "\<Tab>" :
"      \ coc#refresh()
"inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
"inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"function! CheckBackspace() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

" Use <c-space> to trigger completion
"if has('nvim')
"  inoremap <silent><expr> <c-space> coc#refresh()
"else
"  inoremap <silent><expr> <c-@> coc#refresh()
"endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)

"augroup mygroup
"  autocmd!
"  " Setup formatexpr specified filetype(s)
"  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"  " Update signature help on jump placeholder
"  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
"augroup end

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> to scroll float windows/popups
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges
" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
