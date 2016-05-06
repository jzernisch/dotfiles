set nocompatible
set shell=/bin/bash

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlp.vim'
Plugin 'rking/ag.vim'

call vundle#end()
filetype plugin indent on


syntax on
set background=dark
set ruler

set noignorecase
set incsearch
set hlsearch

set autoindent

let mapleader = ","
nmap <leader>p :CtrlP<CR>
nmap <CR> :nohlsearch<CR>
nmap <leader>r :source ~/.vimrc<CR>
nmap <leader>ec :tabnew ~/.vimrc<cr>

autocmd BufWritePre * :%s/\s\+$//e " trim trailing whitespace on save




