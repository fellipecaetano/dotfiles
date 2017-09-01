" Formatting
function! FormatOnSave()
    let l:lines = "all"
    pyf /Users/fellipe/dotfiles/clang-format.py
endfunction

map gq :pyf /Users/fellipe/dotfiles/clang-format.py<CR>
autocmd BufWritePre *.h,*.cc,*.cpp call FormatOnSave()

" Folding
setlocal foldmethod=syntax
autocmd Syntax normal zR
