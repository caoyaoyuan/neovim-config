"--------------------------- Settings -------------------------------------
if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif
let g:python_host_skip_check=1
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_skip_check=1
let g:python3_host_prog = '/usr/bin/python3'
filetype on
filetype plugin on
filetype plugin indent on
"let g:echodoc#type = 'popup' " Default value
let g:echodoc_enable_at_startup = 1
let g:autoim_toggle_shortcut = 'ctrl_space'

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
nnoremap <silent> <C-h> :History<CR><C-h>
"---------------------------Settings------------------------------------------

"-----------------------------------------------------------------------------
"plugin markdown 
"-----------------------------------------------------------------------------
let g:vim_markdown_math = 1
let g:mkdp_path_to_chrome='/usr/bin/google-chrome'
"-----------------------------------------------------------------------------
"-----------------------------------------------------------------------------
"plugin lightline
"-----------------------------------------------------------------------------
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch','readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
"-----------------------------------------------------------------------------

"-----------------------------------------------------------------------------
"plugin floaterm 
"-----------------------------------------------------------------------------
"split('leftabove', 'aboveleft', 'rightbelow', 'belowright', 'topleft', 'botright')
"float('top', 'bottom', 'left', 'right', 'topleft', 'topright', 'bottomleft', 'bottomright', 'center', 'auto'(at the cursor place)) 
let g:floaterm_width=0.3
let g:floaterm_height=0.3
let g:floaterm_wintype='vsplit' 
let g:floaterm_position='belowright'
" let g:floaterm_keymap_new    = '<F7>'
" let g:floaterm_keymap_prev   = '<F8>'
" let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'
autocmd TermOpen * setlocal nonumber norelativenumber
"-----------------------------------------------------------------------------


"-----------------------------------------------------------------------------
"plugin asyncrun
"-----------------------------------------------------------------------------
" 自动打开 quickfix window ，高度为 6
let g:asyncrun_open = 6

" 任务结束时候响铃提醒
let g:asyncrun_bell = 1

" 设置 F10 打开/关闭 Quickfix 窗口
nnoremap <F10> :call asyncrun#quickfix_toggle(10)<cr>
nnoremap <silent> <F9> :AsyncRun g++ -Wall -std=c++14  "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" -lpthread <cr>
nnoremap <silent> <F5> :AsyncRun -cwd=$(VIM_FILEDIR) -mode=4 "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>
"nnoremap <silent> <F5> :AsyncRun -raw -cwd=$(VIM_FILEDIR) """$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>
let g:asyncrun_rootmarks = ['.svn', '.git', '.root', '_darcs', 'build.xml']
"nnoremap <silent> <F7> :AsyncRun -cwd=<root> make <cr>
"nnoremap <silent> <F8> :AsyncRun -cwd=<root> -raw make run <cr>
"nnoremap <silent> <F8> :AsyncRun -cwd=<root> -mode=4 make run <cr>
"nnoremap <silent> <F6> :AsyncRun -cwd=<root> -raw make test <cr>
"nnoremap <silent> <F4> :AsyncRun -cwd=<root> cmake . <cr>

"----------------------------END  asyncrun------------------------------------
"-----------------------------------------------------------------------------
" hlchunk.vim
"-----------------------------------------------------------------------------
" 支持哪些文件 默认为 '*.ts,*.js,*.json,*.go,*.c,*.cpp,*.rs,*.h,*.hpp,*.lua'
  let g:hlchunk_files = '*.ts,*.js,*.json,*.go,*.c,*.cpp,*.rs,*.h,*.hpp,*.lua,*.sh'
" 缩进线的高亮
  au VimEnter * hi HLIndentLine ctermfg=244
" 延时 默认为50
  let g:hlchunk_time_delay = 50
" 高亮线符号(逆时针) 默认为 ['─', '─', '╭', '│', '╰', '─', '>']
  let g:hlchunk_chars=['─', '─', '╭', '│', '╰', '─', '>']

  " 最大支持行数 默认3000(超过5000行的文件不使用hlchunk)
  let g:hlchunk_line_limit = 5000
" 最大支持列数 默认100(超过500列的文件不使用hlchunk)
  let g:hlchunk_col_limit = 500
" 高亮线的hi样式 默认为 'ctermfg=244'
  let g:hlchunk_hi_style = 'ctermfg=244'
"-----------------------------------------------------------------------------
"-----------------------------------------------------------------------------
"glyph-palette.vim
"-----------------------------------------------------------------------------
augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END
set termguicolors | set background=dark
"-----------------------------------------------------------------------------
"-----------------------------------------------------------------------------
"cppman 
"-----------------------------------------------------------------------------
" Window position:
"     Option "g:cppman_open_mode" can allow you specify how to open:
"         :let g:cppman_open_mode = "vertical"
"         :let g:cppman_open_mode = "tab"
"         :let g:cppman_open_mode = "vert botright"
"         :let g:cppman_open_mode = "<auto>"
"
" Position modifiers:
"     Another way to indicate window position is using modifiers:
"         :vertical Cppman keyword
"         :tab Cppman keyword
"         :vert botright Cppman keyword
"-----------------------------------------------------------------------------

"-----------------------------------------------------------------------------
"plugin vim-cpp-modern
"-----------------------------------------------------------------------------
" Disable function highlighting (affects both C and C++ files)
let g:cpp_function_highlight = 1

" Enable highlighting of C++11 attributes
let g:cpp_attributes_highlight = 1

" Highlight struct/class member variables (affects both C and C++ files)
let g:cpp_member_highlight = 1

" Put all standard C and C++ keywords under Vim's highlight group 'Statement'
" (affects both C and C++ files)
let g:cpp_simple_highlight = 1
"-----------------------------------------------------------------------------

"-----------------------------------------------------------------------------
"plugin - vim-cpp-enhanced-highlight
"-----------------------------------------------------------------------------
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_class_decl_highlight = 1
"let g:cpp_experimental_simple_template_highlight = 1
"let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 0
let c_no_curly_error=1
"----------------------------END vim-cpp-enhanced-highlight-------------------


"-----------------------------------------------------------------------------
"plugin vim-devicons
"-----------------------------------------------------------------------------
"Can be enabled or disabled
let g:webdevicons_enable_nerdtree = 1

"whether or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 1

"adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1

"adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1
"-----------------------------------END-----------------------------------------

"-----------------------------------------------------------------------------
" NERTree
""-----------------------------------------------------------------------------
" autocmd vimenter * NERDTree  "自动开启Nerdtree
let g:NERDTreeWinSize = 25 "设定 NERDTree 视窗大小
"let NERDTreeShowBookmarks=1  " 开启Nerdtree时自动显示Bookmarks
"打开vim时如果没有文件自动打开NERDTree
" autocmd vimenter * if !argc()|NERDTree|endif
"当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 设置树的显示图标
"let g:NERDTreeDirArrowExpandable = '+'
"let g:NERDTreeDirArrowCollapsible = '-'
let NERDTreeIgnore = ['\.pyc$']  " 过滤所有.pyc文件不显示
let g:NERDTreeShowLineNumbers=0 " 是否显示行号
let g:NERDTreeHidden=0     "不显示隐藏文件
"Making it prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
"nnoremap <F2> :NERDTreeToggle<CR> " 开启/关闭nerdtree快捷键
"-----------------------------------------------------------------------------

"-----------------------------------------------------------------------------
"plugin nerdcommenter
"-----------------------------------------------------------------------------
"在normal和visual模式下，他会对你光标所在行或所选中的多行进行注释和去注释，只需要你按下 <\>+<c>+<space>
"add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" python 自动的会多加一个空格
au FileType python let g:NERDSpaceDelims = 0
 
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

"-----------------------------------------------------------------------------

"-----------------------------------------------------------------------------
"plugin - LeaderF
"-----------------------------------------------------------------------------
let g:Lf_ShowDevIcons = 1
" let g:Lf_ShortcutF = '<c-p>'
"let g:Lf_ShortcutB = '<s-n>'
"文件搜索
nnoremap <silent> <space>ff :Leaderf file<CR>
"历史打开过的文件
nnoremap <silent> <space>fm :Leaderf mru<CR>
nnoremap <silent> <space>fh :LeaderfHelp<CR>
"Buffer
nnoremap <silent> <space>fb :Leaderf buffer<CR>
nnoremap <silent> <space>fu :Leaderf function<CR>
nnoremap <silent> <space>rg :Leaderf rg<CR>
noremap <space>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <space>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_PreviewResult = {'Function':0, 'Colorscheme':1}
let g:Lf_PopupScheme = 'gruvbox-material'
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }
"--------------popup------------------
" let g:Lf_WindowPosition = 'popup'
" " let g:Lf_PopupPosition=[0,0]
" let g:Lf_PreviewInPopup = 1
" "let g:Lf_PreviewHorizontalPosition='bottom'
" let g:Lf_PreviewCode=1
" let g:Lf_PopupPreviewPosition='bottom'
let g:Lf_WindowHeight = 0.30
" let g:Lf_PopupWidth = 0.65
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }
let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'default'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}
"---------------------------------END LeaderF---------------------------------



"---------------------airline--------------------------------
set list          " Display unprintable characters f12 - switches
set listchars=tab:•\ ,trail:•,extends:»,precedes:« " Unprintable chars mapping
let g:airline_theme = 'onehalfdark'
let g:airline_powerline_fonts = 1
let g:Powerline_symbols='fancy'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'unique_tail'
" let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
let g:airline#extensions#whitespace#enabled = 0


let g:lsp_cxx_hl_use_text_props = 1

"-----------------------------------------------------------------------------
"plugin vim-gutentags
"-----------------------------------------------------------------------------
let $GTAGSLABEL = 'native-pygments'
let $GTAGSCONF = '/etc/gtags/gtags.conf'
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 同时开启 ctags 和 gtags 支持：
let g:gutentags_modules = []
if executable('ctags')
	let g:gutentags_modules += ['ctags']
endif
if executable('gtags-cscope') && executable('gtags')
	let g:gutentags_modules += ['gtags_cscope']
endif

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
 endif

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
" Get ctags version
let g:ctags_version = system('ctags --version')[0:8]
" 如果使用 universal ctags 需要增加下面一行
if g:ctags_version == "Universal"
  let g:gutentags_ctags_extra_args += ['--extras=+q', '--output-format=e-ctags']
endif

" 禁用 gutentags 自动加载 gtags 数据库的行为
let g:gutentags_auto_add_gtags_cscope = 1
"Change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1
"Enable advanced commands: GutentagsToggleTrace, etc.
let g:gutentags_define_advanced_commands = 1

let g:gutentags_trace = 0
"-----------------------------------------------------------------------------

"-----------------------------------------------------------------------------

" Highlight all instances of word under cursor, when idle.
" Useful when studying strange source code.
" Type z/ to toggle highlighting on/off.
nnoremap z/ :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
function! AutoHighlightToggle()
    let @/ = ''
    if exists('#auto_highlight')
        au! auto_highlight
        augroup! auto_highlight
        setl updatetime=1000
        echo 'Highlight current word: off'
        return 0
    else
        augroup auto_highlight
            au!
            au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
        augroup end
        setl updatetime=200
        echo 'Highlight current word: ON'
        return 1
    endif
endfunction

"--------------------------------------gruvbox--------------------------------
