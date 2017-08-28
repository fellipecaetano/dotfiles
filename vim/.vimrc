
" UI Config
set number " shows line
set smartindent
set relativenumber
set visualbell
set showcmd

" Completion menu
inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
imap     <expr> <CR>       pumvisible() ? "\<C-y>" : "\<Plug>delimitMateCR"
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
imap     <expr> ]          pumvisible() ? "\<C-n>" : "\<Plug>delimitMate]"
imap     <expr> [          pumvisible() ? "\<C-p>" : "\<Plug>delimitMate["
inoremap <expr> <Tab>      pumvisible() ? "\<C-y>" : "\<Tab>"
set completeopt+=longest

" Spaces & Tabs
set shiftwidth=4
set tabstop=4 " shows tabs as spaces
set softtabstop=4 " inserts spaces when hitting <TAB>
set expandtab " turns tabs into spaces

" Searching
set incsearch " searches as you type
set hlsearch " highlights search results
nnoremap <Tab> %
vnoremap <Tab> %

" Escape mappings
inoremap jk <esc> " maps jk to <esc>

" Windows
nnoremap <leader>w <C-w>v<C-w>l

" Pathogen
execute pathogen#infect()

" delimitMate
set backspace=2
let delimitMate_expand_cr = 1
