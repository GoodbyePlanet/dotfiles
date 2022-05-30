set number
set relativenumber

set hlsearch
set incsearch
set ignorecase
set smartcase

set autoindent
set smartindent
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set scrolloff=8
set scrolloff=8
set mouse=a

syntax on

" Airline theme
let g:airline_theme='lucius'

inoremap jj <Esc>

let mapleader=" "

" remaps
nnoremap <leader><CR> :noh<CR>

" NerdTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Navigating between splitted windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Plugins installed
" https://github.com/preservim/nerdtree.git
" https://github.com/vim-airline/vim-airline.git
" https://github.com/vim-airline/vim-airline-themes.git
