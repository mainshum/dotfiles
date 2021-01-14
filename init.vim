"general
set exrc 
set guicursor=
"set relativenumber
set nu "set number
set nohlsearch
set hidden
set nowrap
set noerrorbells
set incsearch
set scrolloff=8
set colorcolumn=80
set signcolumn=yes
" history
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
"tabs
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'jiangmiao/auto-pairs'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
call plug#end()

"plugin settings
nnoremap <C-p> <cmd>Telescope find_files<cr>
let g:AutoPairsShortcutToggle = ''


