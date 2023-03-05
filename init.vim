call plug#begin()
"--------------Regular----------------------
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
Plug 'junegunn/fzf.vim' " needed for previews
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
Plug 'voldikss/vim-floaterm'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'lipingcoding/autoim.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'rlue/vim-barbaric' " 中英输入法切换
"--------------Tiny-Tools----------------------
" Plug 'github/copilot.vim'
Plug 'yaocccc/nvim-hlchunk'
Plug 'glepnir/zephyr-nvim'
Plug 'folke/lsp-colors.nvim'
Plug 'honza/vim-snippets'
Plug 'Shougo/echodoc.vim'
Plug 'tpope/vim-unimpaired'
Plug 'preservim/nerdtree'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'skywind3000/vim-cppman'
Plug 'scrooloose/nerdcommenter'
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asynctasks.vim'
"Markdown{{{
Plug 'godlygeek/tabular'
Plug 'SirVer/ultisnips',{'for':'markdown'}
" Plug 'mzlogin/vim-markdown-toc'
" Plug 'plasticboy/vim-markdown'
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
"}}}
"--------------highlight----------------------
" Plug 'bling/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'bfrg/vim-cpp-modern'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'jackguo380/vim-lsp-cxx-highlight'

"------------ctags----------------------
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
"------------colorschemes-----------------
Plug 'flazz/vim-colorschemes'
Plug 'tomasiser/vim-code-dark'"
Plug 'marko-cerovac/material.nvim'
Plug 'sainnhe/sonokai'
Plug 'glepnir/oceanic-material'
Plug 'Th3Whit3Wolf/one-nvim'
Plug 'rakr/vim-one'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'mhartington/oceanic-next'
Plug 'EdenEast/nightfox.nvim' " Vim-Plug
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'rmehri01/onenord.nvim', { 'branch': 'main' }
Plug 'morhetz/gruvbox'

"-------------Unused--------------
"Plug 'puremourning/vimspector'
" Plug 'lukas-reineke/indent-blankline.nvim'
" Plug 'liuchengxu/vista.vim'
"Plug 'mfussenegger/nvim-dap'
"Plug 'Pocco81/DAPInstall.nvim'
"Plug 'theHamsta/nvim-dap-virtual-text'
"Plug 'rcarriga/nvim-dap-ui'
"Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
call plug#end()

"--------------------------- Settings -------------------------------------
let g:python_host_skip_check=1
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_skip_check=1
let g:python3_host_prog = '/usr/bin/python3'
set foldmethod=indent " 设置默认折叠方式为缩进
set foldlevelstart=99 " 每次打开文件时关闭折叠
filetype on
filetype plugin on
filetype plugin indent on
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set updatetime=300
set shortmess+=c
set signcolumn=yes
set autoindent
set tabstop=2
set shiftwidth=2
set updatetime=300
set expandtab
set smartindent
set cursorline
" set nu rnu
set rnu
"set conceallevel=3
set laststatus=2
set noshowmode
set hidden
"set cmdheight=1
set ttimeoutlen=50
set mouse=a
"禁止自动增加注释行
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o 
syntax on
set t_Co=256 "指定配色方案为256
"共享剪切板
set clipboard+=unnamed 
"set cmdheight=3
if version >= 603
     set helplang=cn
     set encoding=utf-8
endif
set guifont=Hack_Mono_Nerd_Font:h20
" let g:mapleader = "
set pumblend=15 "补全菜单透明度
set pumheight=10 "补全菜单太长
if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif
set background=dark    " Setting dark mode
set termguicolors
set noshowmode
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
      \}
set noshowmode
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

"------------------------------coc.nvim------------------------------------
autocmd FileType python let b:coc_root_patterns = ['.git', '.env', 'venv', '.venv', 'setup.cfg', 'setup.py', 'pyproject.toml', 'pyrightconfig.json']
let g:coc_default_semantic_highlight_groups=1
autocmd FileType * let b:coc_pairs_disabled = ['<']
let g:coc_disable_transparent_cursor = 1

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" 为了支持重做操作，coc.nvim 会在切换选项时使用 complete() 来插入
" word，此时会触发 CompleteDone,来禁用掉切换时的插入，或者禁用插件监听 CompleteDone 事件的行为。
inoremap <silent><expr> <C-n> coc#pum#visible() ? coc#pum#next(0) : "\<C-n>"
inoremap <silent><expr> <C-p> coc#pum#visible() ? coc#pum#prev(0) : "\<C-p>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" nnoremap <silent> <C-l> :nohl<CR><C-l>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" Refactor
nmap <leader>rf <Plug>(coc-refactor)
" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
" if has('nvim-0.4.0') || has('patch-8.2.0750')
nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
" endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
autocmd User CocStatusChange redrawstatus

" Mappings for CoCList
" Show all diagnostics.
" allow to scroll in the preview

" mappings
nnoremap <silent> <space><space> :<C-u>CocFzfList<CR>
nnoremap <silent> <space>a       :<C-u>CocFzfList diagnostics<CR>
nnoremap <silent> <space>b       :<C-u>CocFzfList diagnostics --current-buf<CR>
nnoremap <silent> <space>c       :<C-u>CocFzfList commands<CR>
"nnoremap <silent> <space>e       :<C-u>CocFzfList extensions <CR>
nnoremap <silent> <space>l       :<C-u>CocFzfList location<CR>
nnoremap <silent> <space>o       :<C-u>CocFzfList outline<cr>
" nnoremap <silent> <space>o       :<C-u>CocOutline<cr>
nnoremap <silent><nowait> <f8>  :call ToggleOutline()<CR>
function! ToggleOutline() abort
  let winid = coc#window#find('cocViewId', 'OUTLINE')
  if winid == -1
    call CocActionAsync('showOutline', 1)
  else
    call coc#window#close(winid)
  endif
endfunction
nnoremap <silent> <space>s       :<C-u>CocFzfList symbols<CR>
nnoremap <silent> <space>p       :<C-u>CocFzfListResume<CR>
"nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
"" Manage extensions.
"nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
"" Show commands.
"nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
"" Find symbol of current document.
"" nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
"" Search workspace symbols.
"nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
"" Do default action for next item.
"nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
"" Do default action for previous item.
"nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
"" Resume latest coc list.
"nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

"copilot.vim 对原生的 pumvisible() 进行了判定，所以你设置的 tab 可以正常工作，如果你需要 tab 优先执行切换选项，而不是完成 copilot 的选项
" let g:copilot_no_tab_map = v:true
" inoremap <silent><expr> <TAB>
"       \ coc#pum#visible() ? coc#pum#next(1):
"       \ exists('b:_copilot.suggestions') ? copilot#Accept("\<CR>") :
"       \ CheckBackSpace() ? "\<Tab>" :
"       \ coc#refresh()

 "rename
nmap <leader>rn <Plug>(coc-rename)
" 打开CocList
nnoremap <silent> <space>g :<C-u>CocList <CR>

" 绑定 ctrl-space 触发补全
inoremap <silent><expr> <c-space> coc#refresh()
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>
" translator
" NOTE: do NOT use `nore` mappings
" popup
nmap <Leader>t <Plug>(coc-translator-p)
vmap <Leader>t <Plug>(coc-translator-pv)
" echo
nmap <Leader>e <Plug>(coc-translator-e)
vmap <Leader>e <Plug>(coc-translator-ev)
" replace
nmap <Leader>r <Plug>(coc-translator-r)
vmap <Leader>r <Plug>(coc-translator-rv)
"let g:coc_current_word_highlight_delay = 0
"let g:coc_current_word_filetypes = ['*']  
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"


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
"-----------------------------highlight-style---------------------------------
"-----------------------------------------------------------------------------
func! s:my_colors_setup() abort
    " this is an example
      " hi CursorLine guibg=#44505c guifg=fg
      hi LineNr guibg=None
      hi VertSplit guibg=bg guifg=fg
      hi CocTreeSelected guibg=#637080 guifg=fg
      hi CocInfoFloat ctermfg=242 ctermbg=8 guifg=darkgrey guibg=black
      hi PMenu ctermfg=0 ctermbg=242 guifg=#44505c guibg=darkgrey
      hi PMenuSel ctermfg=242 ctermbg=8 guifg=darkgrey guibg=#44505c
      hi Cocmenu guibg= #d7e5dc gui=NONE
      hi CocmenuSel guibg= #b7b7b7  gui=NONE
      hi CocmenuSbar guibg=#bcbcbc
      hi CocSearch  guifg=#18A3FF
      hi CocMenuSel  guibg=#637080
      hi CocFloating  guibg=#44505c
      hi CocErrorSign guifg=#E06C75
      hi CocErrorFloat guifg=#E06C75
      hi FloatermBorder guibg=#282c34
      hi FloatermBorder guifg=#dcdfe4
endfunc
augroup colorscheme_coc_setup | au!
    au ColorScheme * call s:my_colors_setup()
augroup END

autocmd ColorScheme *
  \ hi CocExplorerNormalFloatBorder guifg=#dcdfe4 guibg=#313640 
  \ | hi CocExplorerNormalFloat guibg=#313640
  \ | hi CocExplorerSelectUI guibg=#dcdfe4 
" #282c34

"#b7b7b7 #d7e5dc 4f5b66

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

let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '~/.config/nvim',
\   },
\   'cocConfig': {
\      'root-uri': '~/.config/coc',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'tab:$': {
\     'position': 'tab:$',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 40,
\     'open-action-strategy': 'sourceWindow',
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   },
\   'buffer': {
\     'sources': [{'name': 'buffer', 'expand': v:true}]
\   },
\ }
"-----------------------------------------------------------------------------


" Use preset argument to open it
nmap <space>ev <Cmd>CocCommand explorer --preset .vim<CR>
nmap <space>ec <Cmd>CocCommand explorer --preset cocConfig<CR>
" nmap <space>eb <Cmd>CocCommand explorer --preset buffer<CR>
nmap <F2> <Cmd>CocCommand explorer --position  left --width 30<CR>
" nmap <F3> <Cmd>CocCommand explorer --preset simplify<CR>
nmap ]s <Cmd>CocCommand document.jumpToNextSymbol<CR>
nmap [s <Cmd>CocCommand document.jumpToPrevSymbol<CR>
nnoremap <space>ef <Cmd>CocCommand explorer --preset simplify<CR>

" List all presets
nmap <space>el <Cmd>CocList explPresets<CR>

"--------------------------------------gruvbox--------------------------------
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
"autocmd vimenter * ++nested colorscheme onedark
colorscheme onehalfdark
highlight Normal guibg=NONE ctermbg=None


"--------------------------- Neovide -------------------------------------
if exists("g:neovide")
    " Put anything you want to happen only in Neovide here
    set guifont=Hack\ Nerd\ Font\ Mono:h15
    set clipboard+=unnamed 
    set linespace=0
    let g:neovide_scale_factor=1.0
    function! ChangeScaleFactor(delta)
      let g:neovide_scale_factor = g:neovide_scale_factor * a:delta
    endfunction
    nnoremap <expr><C-=> ChangeScaleFactor(1.25)
    nnoremap <expr><C--> ChangeScaleFactor(1/1.25)
    let g:neovide_confirm_quit = v:true
    let g:neovide_remember_window_size = v:true
    let g:neovide_cursor_antialiasing = v:true
    let g:neovide_scale_factor=1.0
    function! ChangeScaleFactor(delta)
      let g:neovide_scale_factor = g:neovide_scale_factor * a:delta
    endfunction
    nnoremap <expr><C-=> ChangeScaleFactor(1.25)
    nnoremap <expr><C--> ChangeScaleFactor(1/1.25)
    "let g:neovide_fullscreen = v:true

    " g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
"    let g:neovide_transparency = 0.0
"    let g:transparency = 0.8
"    let g:neovide_background_color = '#0f1117'.printf('%x', float2nr(255 * g:transparency))

endif
" autocmd vimenter * ++nested colorscheme onehalfdark




"-----------------------------------------------------------------------------
" vista
"-----------------------------------------------------------------------------
"nnoremap <silent> <f8> :<C-u>Vista!! <CR>
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc
" autocmd User CocStatusChange call vista#RunForNearestMethodOrFunction()
" let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
" " Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
" let g:vista#renderer#enable_icon = 1
" " The default icons can't be suitable for all the filetypes, you can extend it as you wish.
" let g:vista#renderer#icons = {
" \   "function": "\uf794",
" \   "variable": "\uf71b",
" \  }
" let g:vista_default_executive = 'coc'
" let g:vista_fzf_preview = ['right:50%']
" " function! NearestMethodOrFunction() abort
" "   return get(b:, 'vista_nearest_method_or_function', '')
" " endfunction
" function! NearestMethodOrFunction() abort
"   return exists('b:vista_nearest_method_or_function') ? b:vista_nearest_method_or_function : ''
" endfunction
" set statusline+=%{NearestMethodOrFunction()}
" autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
"-----------------------------------------------------------------------------
"-----------------------------------------------------------------------------
"plugin - Telescope
"-----------------------------------------------------------------------------
" Find files using Telescope command-line sugar.
" drop, cursor, ivy
" nnoremap <space>ff <cmd>Telescope find_files theme=dropdown<cr>
" nnoremap <space>rg <cmd>Telescope live_grep theme=dropdown<cr>
" nnoremap <space>fb <cmd>Telescope buffers theme=dropdown<cr>
" nnoremap <space>fh <cmd>Telescope help_tags theme=dropdown<cr>
" nnoremap <space>ft <cmd>Telescope current_buffer_tags theme=dropdown<cr>
" nnoremap <c-h> <cmd>Telescope oldfiles theme=dropdown<cr>
" let g:layout_strategy='vertical'
" :lua << EOF
"   require('telescope').setup{
"       layout_strategy = "bottom_pane",
"       layout_config = { bottom_pane = { height = height } },
"       sorting_strategy = "ascending",
"   }
" EOF
"-----------------------------------------------------------------------------
