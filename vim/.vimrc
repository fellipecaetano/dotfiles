""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" INITIALIZATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Delete all autocmds
autocmd!

" Pathogen
execute pathogen#infect()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC EDITING CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number " shows line
set smartindent
set relativenumber
set visualbell
set showcmd
set hidden
set list
set textwidth=80
set previewheight=24
set wildmode=longest:full
set shiftwidth=2
set tabstop=2 " shows tabs as spaces
set softtabstop=2 " inserts spaces when hitting <TAB>
set expandtab " turns tabs into spaces

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LEADER
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","
nnoremap <silent> <leader>s :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
nnoremap <leader>x :w<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COMPLETION MENU
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set completeopt+=longest

" Indent if we're at the beginning of a line. Else, do completion.
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
      return "\<tab>"
  else
      return "\<c-n>"
  endif
endfunction

inoremap <expr> <Tab> InsertTabWrapper()
inoremap <S-Tab> <C-p>
imap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ARROW KEYS ARE UNACCEPTABLE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OPEN FILES IN DIRECTORY OF CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RENAME CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
      exec ':saveas ' . new_name
      exec ':silent !rm ' . old_name
      redraw!
  endif
endfunction

map <leader>n :call RenameFile()<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SPLITS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SEARCHING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase
set infercase
set incsearch " searches as you type
set hlsearch " highlights search results
nnoremap <Tab> %
vnoremap <Tab> %

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" THE SILVER SEARCHER
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
  nnoremap \ :Ag<Space>
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COMMAND-T
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:CommandTFileScanner = 'git'
let g:CommandTGitIncludeUntracked = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AUTOCMDS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
autocmd FileType swift setlocal tabstop=4
autocmd FileType swift setlocal softtabstop=4
autocmd FileType swift setlocal shiftwidth=4

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM-RUST
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rustfmt_autosave = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM-PRETTIER
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:prettier#config#single_quote = 'false'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#jsx_bracket_same_line = 'false'
let g:prettier#config#arrow_parens = 'avoid'
let g:prettier#config#trailing_comma = 'none'
let g:prettier#config#parser = 'babylon'

