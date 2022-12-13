#!/bin/bash

cat > $HOME/.vimrc << EOF
set nocompatible

colorscheme slate
syntax on

set number
set ruler
set nocursorline
set hlsearch
set incsearch
set ignorecase
set smartcase
set magic

set autoindent
set smartindent
set smarttab
set expandtab
set shiftround
set shiftwidth=4
set tabstop=4
set softtabstop=4

set filetype=on

set foldenable
set foldmethod=indent
set nowrap
EOF
