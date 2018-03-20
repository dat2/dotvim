"plugins {{{
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'jlanzarotta/bufexplorer'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
call plug#end()
"}}}

autocmd vimenter * NERDTree

set clipboard+=unnamed
:vnoremap < <gv
:vnoremap > >gv

" pane switching {{{
" hjkl, left, down, up, right
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
set shiftwidth=2
set softtabstop=2
set tabstop=2
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
