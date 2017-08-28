" UI Config
set number " shows line
set smartindent
set relativenumber
set visualbell
set showcmd

" Completion menu
inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
inoremap <expr> <Tab>      pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab>    pumvisible() ? "\<C-p>" : "\<S-Tab>"
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

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
