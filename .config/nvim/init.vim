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
Plug 'EdenEast/nightfox.nvim' " Vim-Plug

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" For nvim-cmp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" For snippy users.
call plug#end()

" nvim-cmp setup configuration
lua require("_nvim-cmp")

"Nightfox colorscheme
colorscheme nordfox

