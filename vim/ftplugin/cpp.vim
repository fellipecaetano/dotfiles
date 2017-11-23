" Formatting
map gq :Autoformat<CR>
autocmd BufWritePre *.h,*.cc,*.cpp,*.c :Autoformat

" Folding
setlocal foldmethod=syntax
autocmd Syntax normal zR
