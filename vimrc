set nocompatible

" Line numbering
set number

" Incremental searching
set incsearch

" No hightlighted searching
set nohlsearch

" C indentation
set cindent
set nopaste  " This has to be set for autoindent and smartindent
set autoindent
set smartindent

" 4 space tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Syntax highlighting
syntax on

" Get rid of awful blue color
hi Comment ctermfg=darkgreen

" Status line
set laststatus=2
set statusline=%<%f%=\ [%1*%M%*%n%R]\ y\ %-19(%3l,%02c%03V%)

set cursorline

" colorscheme ir_black

