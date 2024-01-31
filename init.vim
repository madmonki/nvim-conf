lua require("init")
inoremap <expr> <cr> ((pumvisible())?("\<C-y>"):("\<cr>"))
tnoremap <Esc> <C-\><C-n>
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-l> <C-\><C-N><C-w>l
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-h> <C-W>h
inoremap <C-l> <C-W>l
inoremap <C-j> <C-W>j
inoremap <C-k> <C-W>k
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
