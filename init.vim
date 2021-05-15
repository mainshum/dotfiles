"general
colorscheme inkpot
set exrc 
set guicursor=
set ignorecase
set smartcase
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
    "Plug 'jiangmiao/auto-pairs'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
    Plug 'junegunn/fzf.vim'
    Plug 'arcticicestudio/nord-vim'
call plug#end()

"plugin settings
let mapleader = " "

" fzf setup
lua << EOF

EOF


nnoremap <Leader>lf <cmd>GFiles<cr>
nnoremap <Leader>lb <cmd>Buffers<cr>
