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
Plug 'ap/vim-css-color'
Plug 'ryanoasis/vim-devicons'
Plug 'mhartington/oceanic-next'
Plug 'ambv/black'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'Shougo/deoplete.nvim'
call plug#end()
"}}}

let mapleader = ","

set clipboard+=unnamed
set encoding=UTF-8

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
nnoremap <leader>m :NERDTreeToggle<CR>
"show dot files
let NERDTreeShowHidden = 1
"}}}

"neoformatter {{{
nnoremap <leader>f :Neoformat<CR>
"}}}

"gutentags {{{
let g:gutentags_file_list_command = 'git ls-files'
"}}}

"tagbar {{{
nnoremap <leader>t :TagbarToggle<CR>
"}}}

"FZF {{{
nnoremap <leader>; :FZF<CR>
nnoremap <leader>' :Tags<CR>
"}}}

"ALE mappings {{{
nnoremap [l :lprevious<CR>
nnoremap ]l :lnext<CR>
nnoremap [L :lfirst<CR>
nnoremap ]L :llast<CR>
"}}}

"theme {{{
syntax enable
colorscheme OceanicNext
let g:airline_theme='oceanicnext'
"}}}

"force me to learn hjkl{{{
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>
vnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
"}}}

let g:deoplete#enable_at_startup = 1
