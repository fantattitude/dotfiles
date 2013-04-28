set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

set t_Co=256
let NERDTreeMinimalUI = 1
let g:Powerline_symbols = 'fancy'
set laststatus=2
set cursorline
highlight clear SignColumn	" Lié à GitGutter <3
set tabstop=4
set shiftwidth=4

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
" colorscheme chlordane

Bundle 'gmarik/vundle'
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'airblade/vim-gitgutter.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'sickill/vim-monokai'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'guicolorscheme.vim'

filetype plugin indent on     " required!

autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>
