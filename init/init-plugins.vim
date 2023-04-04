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
" "-----------------noice-----------------------
" Plug 'folke/noice.nvim'
" Plug 'MunifTanjim/nui.nvim'

" Plug 'mzlogin/vim-markdown-toc'
" Plug 'plasticboy/vim-markdown'
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
"}}}
"--------------highlight----------------------
" Plug 'bling/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'nvim-lualine/lualine.nvim'
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

