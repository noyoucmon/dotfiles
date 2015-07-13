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
set backspace=indent,eol,start

syntax enable
set background=light

filetype off
filetype plugin indent on
filetype plugin on
au FileType php set omnifunc=phpcomplete#CompletePHP
let php_sql_query=1
let php_htmlInStrings=1

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()
Bundle "gmarik/vundle"
Bundle "mattn/emmet-vim"
