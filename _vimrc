
"-------------------------------------------------"
" Author: Jakub Malczak                           "
" Homepage: http://malczak.net                    "
"-------------------------------------------------"

" Not compatible with vi
set nocompatible
" save undo between open / close sessions, disable swap and set backup and
" undo locations
set noswapfile
set backup
set undofile
set backupdir=~/.vim/dirs/backup
set undodir=~/.vim/dirs/undo

if !isdirectory(&backupdir)
  call mkdir(&backupdir, "p")
endif
if !isdirectory(&undodir)
  call mkdir(&undodir, "p")
endif
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
" fix issue with backspace before edit
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent
set laststatus=2

" no spell checker
set nospell
set incsearch 
set lazyredraw
set ttyfast

" set case sensitive search only if one of letters in pattern is uppercase
set smartcase

" make sure that when searching result will be scrolled so it's at least 10
" lines from the edge of the screen
set scrolloff=10

" mouse support
set mouse=a

" split window to the right and below by default
set splitright splitbelow

" remove wrapping
set nowrap

" size of history
set history=1000

" allow openning new file without saving previous
set hidden
"set shell=powershell
"set shellcmdflag=-command
language messages en

set encoding=utf-8
set guifont=Lucida_Console:h12:cEASTEUROPE

set t_Co=256

set number
syntax on
filetype plugin indent on

" color scheme
colorscheme koehler

hi Search ctermbg=NONE ctermfg=Yellow cterm=NONE 
hi Search guibg=NONE guifg=Yellow term=NONE 
hi Underlined cterm=NONE ctermbg=NONE ctermfg=Yellow guibg=NONE guifg=Yellow

" show 100 characters column
:set colorcolumn=100

" style of colorcolumn
:highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

" highlight curren line 
:set cursorline
hi CursorLine term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
" Vundle Install Part
call vundle#begin()

" Common Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'kongo2002/fsharp-vim'
Plugin 'kien/ctrlp.vim'
    "plugin 'kien/ctrlp.vim' configuration
    let g:ctrlp_custom_ignore = {
                \ 'dir' : '\v[\/](node_modules|_bower_components|packages|bin|obj)|(.git|.swp)$'
                \ }
Plugin 'scrooloose/nerdtree'
    " plugin 'scrooloose/nerdtree" configuration
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif      
Plugin 'itchyny/lightline.vim'
    " plugin itchyny/lightline.vim configuration
     let g:lightline = {
          \ 'colorscheme': 'wombat',
          \ }
Plugin 'bling/vim-bufferline'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
    " plugin 'plasticboy/vim-markdown' configuration
    let g:vim_markdown_folding_disabled=1
    au BufRead,BufNewFile *.md set filetype=markdown
Plugin 'vim-scripts/SearchComplete'
Plugin 'vim-scripts/surround.vim'
Plugin 'vim-scripts/matchit.zip'
Plugin 'vim-scripts/SyntaxAttr.vim'
Plugin 'rking/ag.vim'
Plugin 'PProvost/vim-ps1'
    " plugin PProvost/vim-ps1 configuration
    au BufRead,BufNewFile *.ps1 set filetype=ps1
call vundle#end()
