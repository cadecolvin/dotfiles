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

" Rust Autocompletion
Plugin 'racer-rust/vim-racer'

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
set encoding    =utf-8
set backspace   =indent,eol,start
set tabstop     =4
set shiftwidth  =4
set foldmethod  =indent
set foldlevel   =99
set laststatus  =2

set shiftround
set expandtab
set smarttab
set nowrap
set autoindent
set copyindent
set number
set relativenumber
set splitright
set splitbelow
set showmatch
set smartcase
set hlsearch
set incsearch


nmap <C-n> :NERDTreeToggle<CR>


nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <space> za
nnoremap <leader><space> zM
nnoremap <silent> <leader>/ :nohlsearch<CR>

inoremap jk <Esc>

syntax on
filetype plugin indent on


" Use the Solarized color scheme
"set background=dark
"colorscheme Solarized
colors zenburn

" Follow Rust Best Practices
au BufNewFile,BufRead *.rs
    \ set hidden

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

" Setup new html files
au BufNewFile,BufRead *.html set filetype=htmldjango

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


