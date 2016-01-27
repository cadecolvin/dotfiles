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

" The Powerline plugin
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" The Nerdtree plugin
Bundle 'Scrooloose/NerdTree'

" The Jedi-Vim Python completion tool
Bundle 'DavidHalter/Jedi-Vim'

" The ZenBurn Theme
Bundle 'JNurmine/Zenburn'

" The Solarized Theme
Bundle 'altercation/vim-colors-solarized'

" All Plugins must be added before this line
" ------------------------------------------
call vundle#end()

filetype plugin indent on
syntax on
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set expandtab
set number

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
if has('gui_running')
    let g:solarized_termcolors=256
    set background=dark
    colorscheme solarized
else
    colorscheme Zenburn
endif

"""""""""""""""""""""""""""""
"Open new splits logically
"""""""""""""""""""""""""""""
set splitright
set splitbelow

"""""""""""""""""""""""""""""
"Powerline setup
"""""""""""""""""""""""""""""
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

"""""""""""""""""""""""""""""
"Jed-Vim Settings
"""""""""""""""""""""""""""""
let g:jedi#force_py_version = 3

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

"""""""""""""""""""""""""""""
"Set the encoding
"""""""""""""""""""""""""""""
set encoding=utf-8
