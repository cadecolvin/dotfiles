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

" The Jedi-Vim Python completion tool
Bundle 'DavidHalter/Jedi-Vim'

" The Airline Plugin
Plugin 'vim-airline/vim-airline'

" The ZenBurn Theme
Bundle 'JNurmine/Zenburn'

" The Solarized Theme
Bundle 'altercation/vim-colors-solarized'

" ------------------------------------------
" All Plugins must be added before this line
call vundle#end()

" Use utf-8 character encoding
set encoding=utf-8

" Make the backspace normal
set backspace=indent,eol,start

" Set tabs to use 4 spaces
set tabstop=4

" Set the '>' and '<' commands to use 4 spaces
set shiftwidth=4

" Substitute spaces for tabs
set expandtab

" Turn on line numbering
set number

" Turn on syntax highlighting
syntax on
filetype plugin indent on

" Don't reach for escape
imap jk <Esc>

" Open NerdTree
map <C-n> :NERDTreeToggle<CR>

" Use the Solarized color scheme
set background=dark
colorscheme Solarized
"colorscheme Zenburn

" Open new splits logically
set splitright
set splitbelow

" Tell vim to always have a status line" 
set laststatus=2

" Tell jedi-vim to use python3
let g:jedi#force_py_version = 3
let g:jedi#show_call_signatures = "2"

" Use code folding on indents
set foldmethod=indent
set foldlevel=99

" Use spacebar to fold code
nnoremap <space> za

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
