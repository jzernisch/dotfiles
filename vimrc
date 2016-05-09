set nocompatible
set shell=/bin/bash

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'ervandew/supertab'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-airline/vim-airline'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'sheerun/vim-polyglot'

call vundle#end()

filetype plugin indent on
let mapleader = ","

" appearance
syntax on
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
set ruler
set number
set cursorline

" search
set noignorecase
set incsearch
set hlsearch
nmap <F2> :nohlsearch<CR>

" indentation
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=-1 " use value of shiftwidth

" vimrc
nmap <leader>rc :source ~/.vimrc<CR>
nmap <leader>ec :tabnew ~/.vimrc<cr>
nmap <leader>l :NERDTreeToggle<cr>

" ctrlp
let g:ctrlp_match_window_reversed = 0

" whitespace
autocmd BufWritePre * :%substitute/\s\+$//e
