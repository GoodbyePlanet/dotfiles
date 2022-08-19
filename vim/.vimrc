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
set belloff=all

inoremap jj <Esc>

let mapleader=" "

" remaps
nnoremap <leader><CR> :noh<CR>

" NerdTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Git Gutter
"let g:gitgutter_sign_added = '✚'
"let g:gitgutter_sign_modified = '✹'
"let g:gitgutter_sign_removed = '-'
"let g:gitgutter_sign_removed_first_line = '-'
"let g:gitgutter_sign_modified_removed = '-'

" Navigating between splitted windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" FZF
nnoremap <leader>b :Buffers<CR>
nnoremap <C-p> :GFiles<CR>

" VIM-COC

" GoTo code navigation.
nmap gd <Plug>(coc-definition)
nmap gy <Plug>(coc-type-definition)
nmap gi <Plug>(coc-implementation)
nmap gr <Plug>(coc-references)

nnoremap gf :NERDTreeFind<CR>

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"" Symbol renaming.
nmap <leader>cr <Plug>(coc-rename)

" view all errors
nnoremap <leader>cl  :<C-u>CocList locationlist<CR>

" restart when tsserver gets wonky
nnoremap <leader>cR  :<C-u>CocRestart<CR>

" manage extensions
nnoremap <leader>cx  :<C-u>CocList extensions<cr>

" list commands available in tsserver (and others)
nnoremap <leader>cc  :<C-u>CocList commands<cr>

" Diagnostics
nmap <leader>cp <Plug>(coc-diagnostic-prev)
nmap <leader>cn <Plug>(coc-diagnostic-next)
nmap <leader>ci <Plug>(coc-diagnostic-info)
nnoremap <leader>cd  :<C-u>CocDiagnostic<cr>

" show quickaction
nmap <leader>ca <Plug>(coc-codeaction-cursor)
vmap <leader>ca <Plug>(coc-codeaction-selected)

" use <c-space>for trigger completion
inoremap <silent><expr> <NUL> coc#refresh()
if has('gui_running')
  inoremap <silent><expr> <c-space> coc#refresh()
endif

nnoremap <leader>cf <Plug>(coc-format)
vnoremap <leader>f <Plug>(coc-format-selected)

" }}}

" PLUGINS
 
" plugins and indentation based on filetype
filetype off

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

call plug#end()

" Theme
" For dark version.
set background=dark
" For light version.
"set background=light
colorscheme gruvbox

syntax on

