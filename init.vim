" 防止重复加载
if get(s:, 'loaded', 0) != 0
	finish
else
	let s:loaded = 1
endif

" 取得本文件所在的目录
let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" 定义一个命令用来加载文件
command! -nargs=1 LoadScript exec 'so '.s:home.'/'.'<args>'

" 将 vim-init 目录加入 runtimepath
exec 'set rtp+='.s:home

" 将 ~/.vim 目录加入 runtimepath (有时候 vim 不会自动帮你加入）
set rtp+=~/.config/nvim

"----------------------------------------------------------------------
" 模块加载
"----------------------------------------------------------------------
" 加载配置模块
LoadScript init/init-base.vim
LoadScript init/init-plugins.vim
LoadScript init/init-tabsize.vim
LoadScript init/init-highlight.vim
LoadScript init/init-coc.vim
LoadScript init/init-pConfig.vim
" LoadScript init/init-config.vim
" LoadScript init/init-neovide.vim
" :lua require("indent_blankline").setup {
"             \-- for example, context is off by default, use this to turn it on
"             \show_current_context = true,
"             \show_current_context_start = true,
"             \}


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Neovim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('nvim')
  " Show incremental search/replace
  set inccommand=nosplit

  " Load the rest of the Neovim config from setup.lua
  lua require('setup')
  lua require('init')
end
