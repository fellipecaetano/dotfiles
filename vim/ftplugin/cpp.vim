" Formatting
function! FormatOnSave()
  let l:lines = "all"
  pyf $HOME/dotfiles/clang-format.py
endfunction

map gq :pyf $HOME/dotfiles/clang-format.py<CR>
autocmd BufWritePre *.h,*.cc,*.cpp,*.c call FormatOnSave()

" Folding
setlocal foldmethod=syntax
autocmd Syntax normal zR
