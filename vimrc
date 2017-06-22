let mapleader=","
set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" All Plugins Must exist after this line
" -----------------------------------------

" The Vundle Plugin
Plugin 'gmarik/Vundle.vim'

" The Nerdtree plugin
Bundle 'Scrooloose/NerdTree'

" The Airline Plugin
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" The ZenBurn Theme
Bundle 'JNurmine/Zenburn'

" The Solarized Theme
Bundle 'altercation/vim-colors-solarized'

" ------------------------------------------
" All Plugins must be added before this line
call vundle#end()

" Basic VIM settings
set encoding=utf-8
set backspace=indent,eol,start

set tabstop=4
set shiftwidth=4
set shiftround
set expandtab
set smarttab
set nowrap

set autoindent
set copyindent

set foldmethod=indent
set foldlevel=99

set number
set relativenumber

set splitright
set splitbelow
set laststatus=2

set showmatch
set smartcase
set hlsearch
set incsearch


nmap <C-n> :NERDTreeToggle<CR>

inoremap jk <Esc> 

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <space> za
nnoremap <leader><space> zM
nnoremap <silent> <leader>/ :nohlsearch<CR>

syntax on
filetype plugin indent on


" Use the Solarized color scheme
"set background=dark
"colorscheme Solarized
"colorscheme Zenburn

" Follow PEP-8 formatting for python files
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set colorcolumn=80 |
    \ set encoding=utf-8

" Setup new html files from the skeleton
au BufNewFile *.html 0r ~/.vim/skeletons/skeleton.html

" Setup the Airline symbols
let g:airline_powerline_fonts = 1
let g:airline_theme = "dark"

"let g:airline_symbols = {}
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''


