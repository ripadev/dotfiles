syntax on
set number
set autoindent
set ignorecase
set hlsearch
set showmatch
set clipboard=unnamedplus
filetype plugin on

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'

call plug#begin()

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
