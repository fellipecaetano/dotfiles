" UI Config
set number " shows line
set smartindent
set relativenumber
set visualbell
set showcmd
set hidden
set list
set textwidth=80
set previewheight=24

" Leader shortcuts
let mapleader=","
nnoremap <silent> <leader>s :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>a ~h
vnoremap <leader>a ~
nmap <leader>c viw<leader>a
nnoremap <leader>x :w<CR>

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
set shiftwidth=2
set tabstop=2 " shows tabs as spaces
set softtabstop=2 " inserts spaces when hitting <TAB>
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

" Pathogen
execute pathogen#infect()

" delimitMate
set backspace=2
let delimitMate_expand_cr = 1

" the silver searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
  nnoremap \ :Ag<Space>
endif

" Filetypes
autocmd BufReadPost fastlane/changelog set filetype=text
autocmd BufReadPost fastlane/changelog set textwidth=78
autocmd BufReadPost Podfile set filetype=ruby
autocmd FileType c map gq :Autoformat<CR>
autocmd FileType cpp map gq :Autoformat<CR>
autocmd BufWritePre *.h,*.cc,*.cpp,*.c :Autoformat
autocmd FileType crontab set backupcopy=yes
autocmd FileType html setlocal tabstop=2
autocmd FileType html setlocal softtabstop=2
autocmd FileType html setlocal shiftwidth=2
autocmd FileType markdown set textwidth=80
autocmd FileType prolog set textwidth=80
autocmd FileType ruby set makeprg="ruby"

" vim-rust
let g:rustfmt_autosave = 1
