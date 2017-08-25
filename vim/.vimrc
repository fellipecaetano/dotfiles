" UI Config
set number " shows line

" Spaces & Tabs
set tabstop=4 " shows tabs as spaces
set softtabstop=4 " inserts spaces when hitting <TAB>
set expandtab " turns tabs into spaces

" Searching
set incsearch " searches as you type
set hlsearch " highlights search results

" Leader shortcuts
inoremap jk <esc> " maps jk to <esc>

" Pathogen
execute pathogen#infect()
