" Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'christophermca/meta5'
call vundle#end()

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

set number
set ruler
set cursorline
set wildmenu

set ffs=unix,dos,mac
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
set backspace=indent,eol,start

set encoding=utf8
syntax enable
set tabstop=4
set softtabstop=4
set expandtab
filetype indent on

set foldenable

set background=light
colorscheme meta5

filetype off
filetype plugin indent on
filetype plugin on
au FileType php set omnifunc=phpcomplete#CompletePHP
let php_sql_query=1
let php_htmlInStrings=1
