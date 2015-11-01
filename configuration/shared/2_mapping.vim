" set time vim waits for next character
set timeoutlen=400

" set leader key
let mapleader = "\<Space>"

" BASIC
nnoremap ; :
vnoremap ; :
nnoremap : ;
vnoremap : ;

" map leader i to esc
inoremap 8 <ESC>
inoremap 88 8

" NERD Tree
nnoremap <silent> <F4> :NERDTreeToggle<CR>
nnoremap <silent> <F5> :NERDTreeFind<CR>

" ctrl p
nnoremap <leader>e :CtrlP .<cr>
nnoremap <leader>E :CtrlP<cr>
nnoremap <leader>b :CtrlPBuffer<cr>

" fix ctrl p keys
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" Copy and paste
nnoremap <leader>y "+y
nnoremap <leader>p "+p
vnoremap <leader>y "+y
vnoremap <leader>p "+p

" Map cursor to move screen line wise not file line wise, good for long lines
nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j

" easy window navigation
nnoremap <silent> <c-l> <c-w>l
nnoremap <silent> <c-j> <c-w>j
nnoremap <silent> <c-h> <c-w>h
nnoremap <silent> <c-k> <c-w>k

" map standard undo
:map <C-z> u

" map angle brackets to preserve selection in visual mode
vmap < <gv
vmap > >gv

" map tab to autocomplete in insert mode
:imap <S-Tab> <C-P>

" indent as in Visual Studio
nnoremap <C-K><C-R> 1G=G
inoremap <C-K><C-R> 1G=G
vnoremap <C-K><C-R> 1G=G
