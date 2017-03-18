" Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'christophermca/meta5'
Plugin 'mattn/emmet-vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
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
set tabstop=2
set softtabstop=2
set expandtab
set foldenable
set background=dark

syntax enable
colorscheme meta5

filetype indent on
filetype off
filetype plugin indent on
filetype plugin on

" PHP
au FileType php set omnifunc=phpcomplete#CompletePHP
let php_sql_query=1
let php_htmlInStrings=1

" NERDTree
map <F1> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" https://github.com/scrooloose/nerdtree/issues/201#issuecomment-9954740
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('js', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('php', 'blue', 'none', 'blue', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')

call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')

call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')

call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')

" Markdown
let g:vim_markdown_folding_disabled=1
