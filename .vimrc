"plugins {{{
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'jlanzarotta/bufexplorer'
Plug 'qpkorr/vim-bufkill'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'rust-lang/rust.vim'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-fugitive'
call plug#end()
"}}}

let mapleader = ","

set clipboard+=unnamed

"split switching {{{
"hjkl, left, down, up, right
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>
"}}}

"indentation and tabs {{{
set autoindent
set backspace=eol,indent,start
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set shiftround
set linebreak
"}}}

"searching {{{
set ignorecase
set smartcase
set incsearch
"set highlighting search terms...
set hlsearch
"...but don't do it every time we source the vimrc
nohlsearch
nnoremap <silent> <leader>- :nohlsearch<CR><C-l>
"}}}

"automatically update files on change {{{
set autoread
"}}}

"white space characters {{{
if &listchars ==# 'eol:$'
  set listchars=tab:▸\ ,eol:¬
endif
"}}}

"put swap files in central location {{{
set directory=$HOME/.vim/swapdir
"}}}

"line numbers {{{
set number
"}}}

"nerd tree {{{
"reveal in side bar (nerdtree)
nnoremap <leader>n :NERDTreeFind<CR>
"open nerd tree
nnoremap <leader>m :NERDTree<CR>
"show dot files
let NERDTreeShowHidden = 1
"}}}

"close buffer without closing split {{{
nnoremap <leader>w :BD<cr>
"}}}

"neoformatter {{{
nnoremap <leader>p :Neoformat prettier<CR>
"useful for rust
nnoremap <leader>f :Neoformat<CR>
"}}}
