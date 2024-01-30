lua require("init")
inoremap <expr> <cr> ((pumvisible())?("\<C-y>"):("\<cr>"))
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
augroup CustomNetrwMappings
  autocmd!
  autocmd FileType netrw nnoremap <buffer> <C-h> <C-W>h
  autocmd FileType netrw nnoremap <buffer> <C-l> <C-W>l
  autocmd FileType netrw nnoremap <buffer> <C-j> <C-W>j
  autocmd FileType netrw nnoremap <buffer> <C-k> <C-W>k
augroup END
