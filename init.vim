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
    Plug 'nvim-lua/completion-nvim'
    Plug 'neovim/nvim-lspconfig' "common configs for a language server client
call plug#end()

"plugin settings
nnoremap <C-p> <cmd>Telescope find_files<cr>
let g:AutoPairsShortcutToggle = ''
set completeopt=menuone,noinsert,noselect
set shortmess+=c
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

lua << EOF
require('lspconfig').tsserver.setup{
    on_attach=require('completion').on_attach
}

require('telescope').setup{
    defaults = {
        prompt_prefix = ">",
        file_ignore_patterns = {"node_modules/.*"}
    }
}
EOF
