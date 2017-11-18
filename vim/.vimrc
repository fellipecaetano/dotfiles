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
nnoremap <leader>a ~
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

" clang_complete
let g:clang_library_path='/Users/fellipe/Developer/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib'
let g:clang_auto_select=2
let g:clang_complete_auto=0
let g:clang_complete_copen=1
let g:clang_close_preview=1

" the silver searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

  command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
  nnoremap \ :Ag<Space>
endif

" ctrlp
let g:ctrlp_working_path_mode = 'ra'

" NERDTree
nnoremap <leader>t :NERDTreeToggle<CR>
vnoremap <leader>t :NERDTreeToggle<CR>

" Filetypes
autocmd BufReadPost fastlane/changelog set filetype=text
autocmd BufReadPost fastlane/changelog set textwidth=78
autocmd BufReadPost Podfile set filetype=ruby

" vim-rust
let g:rustfmt_autosave = 1
