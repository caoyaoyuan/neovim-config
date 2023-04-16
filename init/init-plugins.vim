call plug#begin()
"--------------Regular----------------------
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
Plug 'junegunn/fzf.vim' " needed for previews
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
Plug 'voldikss/vim-floaterm'
Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.x' }
Plug 'nvim-telescope/telescope-symbols.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
Plug 'lipingcoding/autoim.vim'
Plug 'rlue/vim-barbaric' " 中英输入法切换
"--------------Tiny-Tools----------------------
" Plug 'ianding1/leetcode.vim'
" Plug 'mbledkowski/neuleetcode.vim'
" Plug 'github/copilot.vim'
Plug 'echasnovski/mini.nvim', { 'branch': 'stable' }
Plug 'echasnovski/mini.indentscope', { 'branch': 'stable' }
Plug 'glepnir/zephyr-nvim'
Plug 'honza/vim-snippets'
Plug 'Shougo/echodoc.vim'
Plug 'tpope/vim-unimpaired'
Plug 'skywind3000/vim-cppman'
Plug 'scrooloose/nerdcommenter'
" Plug 'skywind3000/asyncrun.vim'
" Plug 'skywind3000/asynctasks.vim'
"Markdown{{{
Plug 'godlygeek/tabular'
Plug 'SirVer/ultisnips',{'for':'markdown'}
"--------------highlight----------------------
" Plug 'nvim-tree/nvim-tree.lua'
Plug 'kdheepak/tabline.nvim'
Plug 'nvim-lualine/lualine.nvim'
" Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
Plug 'lambdalisue/glyph-palette.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"------------ctags----------------------
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
"------------colorschemes-----------------
Plug 'flazz/vim-colorschemes'
Plug 'tomasiser/vim-code-dark'"
Plug 'marko-cerovac/material.nvim'
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
" Plug 'mfussenegger/nvim-dap'
" Plug 'rcarriga/nvim-dap-ui'
" Plug 'Pocco81/DAPInstall.nvim'
" Plug 'theHamsta/nvim-dp-virtual-text'
" Plug 'bfrg/vim-cpp-modern'
" Plug 'octol/vim-cpp-enhanced-highlight'
if has('nvim')
  function! UpdateRemotePlugins(...)
    " Needed to refresh runtime files
    let &rtp=&rtp
    UpdateRemotePlugins
  endfunction

  Plug 'roxma/nvim-yarp'
  Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }
else
  Plug 'gelguy/wilder.nvim'

  " To use Python remote plugin features in Vim, can be skipped
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
call plug#end()

