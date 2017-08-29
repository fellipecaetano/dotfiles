" UI Config
set number " shows line
set smartindent
set relativenumber
set visualbell
set showcmd
set hidden
set list

" Leader shortcuts
let mapleader=","
nnoremap <silent> <leader>s :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>a ~
vnoremap <leader>a ~
nmap <leader>c viw<leader>a

" Wildmode
set wildmode=longest:full

" Completion menu
imap <C-Space> <C-x><C-u>
imap <C-S-Space> <C-x><C-p>
inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"
imap <expr> <CR> pumvisible() ? "\<C-y>" : "\<Plug>delimitMateCR"
inoremap <expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up> pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp> pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
imap <expr> ] pumvisible() ? "\<C-n>" : "\<Plug>delimitMate]"
imap <expr> [ pumvisible() ? "\<C-p>" : "\<Plug>delimitMate["
inoremap <expr> <Tab> pumvisible() ? "\<C-y>" : "\<Tab>"
set completeopt+=longest

" Spaces & Tabs
set shiftwidth=4
set tabstop=4 " shows tabs as spaces
set softtabstop=4 " inserts spaces when hitting <TAB>
set expandtab " turns tabs into spaces

" Searching
set ignorecase
set infercase
set incsearch " searches as you type
set hlsearch " highlights search results
nnoremap <Tab> %
vnoremap <Tab> %

" Escape mappings
inoremap jj <esc>

" Windows

" Pathogen
execute pathogen#infect()

" delimitMate
set backspace=2
let delimitMate_expand_cr = 1

" clang_complete
let g:clang_library_path='/Users/fellipe/Developer/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib'
let g:clang_auto_select=2
let g:clang_complete_auto=0
let g:clang_complete_copen=1
let g:clang_close_preview=1

" Filetypes
autocmd BufReadPost fastlane/changelog set filetype=text
autocmd BufReadPost fastlane/changelog set textwidth=78
