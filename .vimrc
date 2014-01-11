set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

set number
set ruler
set expandtab
set encoding=utf8
set ffs=unix,dos,mac
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

syntax enable
colorscheme desert
set background=dark

filetype off
filetype plugin indent on

set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle "gmarik/vundle"
Bundle "mattn/emmet-vim"
