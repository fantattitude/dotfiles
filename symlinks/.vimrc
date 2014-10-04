set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle.vim'
" original repos on github
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
Plugin 'tpope/vim-bundler.git'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'altercation/vim-colors-solarized.git'
" vim-scripts repos
Plugin 'L9'

call vundle#end()
filetype plugin indent on     " required!

set t_Co=256
let NERDTreeMinimalUI = 1
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme             = 'powerlineish'
" vim-powerline symbols
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
let g:solarized_termcolors = 256
let g:solarized_termtrans = 1
"let g:solarized_visibility = "high"
"let g:solarized_contrast = "high"
colorscheme solarized


autocmd User Rails set tabstop=2
autocmd User Rails set shiftwidth=2
autocmd User Rails set softtabstop=2
autocmd User Rails set expandtab

autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>
