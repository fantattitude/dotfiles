set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

set t_Co=256
let NERDTreeMinimalUI = 1
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
set cursorline
highlight clear SignColumn	" Lié à GitGutter <3
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab


set pastetoggle=<F2>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let mapleader=','

set encoding=utf-8
set backspace=indent,eol,start
set nobackup
set nowritebackup
set noswapfile

set nu
syntax on
set background=dark

Bundle 'gmarik/vundle'
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-bundler.git'
Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-airline'
Bundle 'Valloric/YouCompleteMe'
Bundle 'airblade/vim-gitgutter.git'
Bundle 'scrooloose/nerdtree.git'
" vim-scripts repos
Bundle 'L9'

filetype plugin indent on     " required!

autocmd User Rails set tabstop=2
autocmd User Rails set shiftwidth=2
autocmd User Rails set softtabstop=2
autocmd User Rails set expandtab

autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>
