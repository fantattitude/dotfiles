set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

let g:Powerline_symbols = 'fancy'
set laststatus=2

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

Bundle 'gmarik/vundle'
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-powerline'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'

filetype plugin indent on     " required!
