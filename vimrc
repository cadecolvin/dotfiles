set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

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

" All Plugins must be added before this line
" ------------------------------------------
call vundle#end()

"""""""""""""""""""""""""""""
"Format Settings
"""""""""""""""""""""""""""""
set encoding=utf-8
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set expandtab
set number
syntax on
filetype plugin indent on

"""""""""""""""""""""""""""""
"Key Mappings
"""""""""""""""""""""""""""""
" Don't reach for escape
imap jk <Esc>

" Open NerdTree
map <C-n> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""
"Determine which theme to use
"""""""""""""""""""""""""""""
colorscheme Solarized
"colorscheme Zenburn

"""""""""""""""""""""""""""""
"Open new splits logically
"""""""""""""""""""""""""""""
set splitright
set splitbelow

"""""""""""""""""""""""""""""
"Airline Settings
"""""""""""""""""""""""""""""
set laststatus=2

"""""""""""""""""""""""""""""
"Jed-Vim Settings
"""""""""""""""""""""""""""""
let g:jedi#force_py_version = 3
let g:jedi#show_call_signatures = "2"

"""""""""""""""""""""""""""""
"Python tabbing
"""""""""""""""""""""""""""""
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
