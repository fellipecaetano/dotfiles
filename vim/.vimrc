" Colors
syntax enable " enables syntax processing

" UI Config
set number " shows line
set cursorline " highlights current line 
set ruler " show line and column information
set wildmenu " show UI for command autocompletion
filetype indent plugin on " enable filetype detection, indenting and pluging support

" Spaces & Tabs
set tabstop=4 " shows tabs as spaces
set softtabstop=4 " inserts spaces when hitting <TAB>
set expandtab " turns tabs into spaces

" Searching
set incsearch " searches as you type
set hlsearch " highlights search results
" stops highlights search results on ,<space>
nnoremap <leader><space> :nohlsearch<CR>

" Leader shortcuts
let mapleader="," " leader is comma
inoremap jk <esc> " maps jk to <esc>

