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
Plug 'ludovicchabant/vim-gutentags'
Plug 'w0rp/ale'
Plug 'editorconfig/editorconfig-vim'
Plug 'bling/vim-airline'
Plug 'majutsushi/tagbar'
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
set copyindent
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
set directory=$HOME/.config/nvim/swapdir
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
nnoremap <leader>f :Neoformat<CR>
"}}}

let g:gutentags_file_list_command = 'git ls-files'

"tagbar {{{
nnoremap <leader>t :TagbarToggle<CR>
"}}}

"split {{{
nnoremap <leader>v :vsp<CR>
"}}}
