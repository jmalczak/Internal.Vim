" omnisharp build mapping
autocmd FileType cs nnoremap <leader>bu :wa!<cr>:OmniSharpBuild<cr>

" easy window navigation
nnoremap <silent> <c-l> <c-w>l
nnoremap <silent> <c-j> <c-w>j
nnoremap <silent> <c-h> <c-w>h
nnoremap <silent> <c-k> <c-w>k

" NERD Tree
nnoremap <silent> <F4> :NERDTreeToggle<CR>
nnoremap <silent> <F5> :NERDTreeFind<CR>

" ctrl p
nnoremap <leader>e :CtrlP .<CR>
nnoremap <leader>E :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>

" fix ctrl p keys
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" json pretty format using python
nnoremap <leader>j :%!python -m json.tool<CR>

" nerd commenter
nnoremap <leader>c :call NERDComment(0, "comment")<CR>
nnoremap <leader>u :call NERDComment(0, "uncomment")<CR>
vnoremap <leader>c :call NERDComment(0, "comment")<CR>
vnoremap <leader>u :call NERDComment(0, "uncomment")<CR>
