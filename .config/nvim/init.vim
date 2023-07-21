lua print("Ripa's vim Config")

set relativenumber
set autoindent
set ignorecase
set tabstop=2
set shiftwidth=2

" My Custom key
let mapleader=","
nnoremap <Leader>g :GFiles<Cr>
nnoremap <Leader>p :Files<Cr> 
nnoremap <Leader>f :Rg<Cr> 
nnoremap <Leader>q :Ex<Cr>
noremap <Leader>h :TSToggle highlight<Cr>

map <C-p> <Nop>
map <C-n> <Nop>

" Vim-plug Section begin
call plug#begin()

" fzf plugin
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Colorscheme
Plug 'EdenEast/nightfox.nvim'

" Lsp Zero LSP Support
Plug 'neovim/nvim-lspconfig'                           " Required
Plug 'williamboman/mason.nvim', {'do': ':MasonUpdate'} " Optional
Plug 'williamboman/mason-lspconfig.nvim'               " Optional

" Autocompletion
Plug 'hrsh7th/nvim-cmp'     " Required
Plug 'hrsh7th/cmp-nvim-lsp' " Required
Plug 'L3MON4D3/LuaSnip'     " Required

Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v2.x'}

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

"Nightfox colorscheme
lua require("_nightfox")
colorscheme nightfox

"LSP Zero usage
lua require("_lsp-zero")



