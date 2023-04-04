"----------------------------------------------------------------------
" 基础设置
"----------------------------------------------------------------------

" 禁用 vi 兼容模式
set nocompatible
" 设置 Backspace 键模式
set bs=eol,start,indent
" 打开 C/C++ 语言缩进优化
set cindent
" 关闭自动换行
set nowrap
" 打开功能键超时检测（终端下功能键为一串 ESC 开头的字符串）
set ttimeout
" 功能键超时检测 50 毫秒
set ttimeoutlen=50
" 显示光标位置
set ruler
set foldmethod=indent " 设置默认折叠方式为缩进
set foldlevelstart=99 " 每次打开文件时关闭折叠
set termencoding=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set updatetime=300
set shortmess+=c
set signcolumn=yes
set autoindent
set shiftwidth=4
set updatetime=300
set smartindent
set cursorline
" set nu rnu
set rnu
"set conceallevel=3
set laststatus=2
set hidden
"set cmdheight=1
set mouse=a
"禁止自动增加注释行
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o 
syntax on
set t_Co=256 "指定配色方案为256
"共享剪切板
set clipboard+=unnamed 
if version >= 603
     set helplang=cn
     set encoding=utf-8
endif
set guifont=Hack_Mono_Nerd_Font:h20
" let g:mapleader = "
set pumblend=15 "补全菜单透明度
set pumheight=10 "补全菜单太长
set background=dark    " Setting dark mode
set termguicolors
set noshowmode
"----------------------------------------------------------------------
" 搜索设置
"----------------------------------------------------------------------
" 搜索时忽略大小写
set ignorecase
" 智能搜索大小写判断，默认忽略大小写，除非搜索内容包含大写字母
set smartcase
" 高亮搜索内容
set hlsearch
" 查找输入时动态增量显示查找结果
set incsearch
"----------------------------------------------------------------------
" 编码设置
"----------------------------------------------------------------------
if has('multi_byte')
	" 内部工作编码
	set encoding=utf-8
	" 文件默认编码
	set fileencoding=utf-8
	" 打开文件时自动尝试下面顺序的编码
	set fileencodings=ucs-bom,utf-8,gbk,gb18030,big5,euc-jp,latin1
endif
"----------------------------------------------------------------------
" 允许 Vim 自带脚本根据文件类型自动设置缩进等
"----------------------------------------------------------------------
if has('autocmd')
	filetype plugin indent on
endif
"----------------------------------------------------------------------
" 其他设置
"----------------------------------------------------------------------
" 显示匹配的括号
set showmatch
" 显示括号匹配的时间
set matchtime=2
" 显示最后一行
set display=lastline
" 允许下方显示目录
set wildmenu
" 延迟绘制（提升性能）
set lazyredraw
" 错误格式
set errorformat+=[%f:%l]\ ->\ %m,[%f:%l]:%m
" 设置分隔符可视
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<
" 设置 tags：当前文件所在目录往上向根目录搜索直到碰到 .tags 文件
" 或者 Vim 当前目录包含 .tags 文件
set tags=./.tags;,.tags
" 如遇Unicode值大于255的文本，不必等到空格再折行
set formatoptions+=m
" 合并两行中文时，不在中间加空格
set formatoptions+=B
" 文件换行符，默认使用 unix 换行符
set ffs=unix,dos,mac
"----------------------------------------------------------------------
" 设置代码折叠
"----------------------------------------------------------------------
if has('folding')
	" 允许代码折叠
	set foldenable
	" 代码折叠默认使用缩进
	set fdm=indent
	" 默认打开所有缩进
	set foldlevel=99
endif

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

syntax enable
set bg=dark
" colorscheme nightfox "terafox, nordfox, duskfox, dawnfox, dayfox, nightfox
autocmd vimenter * ++nested colorscheme onehalfdark

