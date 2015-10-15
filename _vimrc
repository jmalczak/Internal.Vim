
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
set timeoutlen=600

" set leader key
let mapleader = "\<Space>"

" BASIC
nnoremap ; :
vnoremap ; :
nnoremap : ;
vnoremap : ;

" map leader i to esc
inoremap ii <ESC>

" NERD Tree
nnoremap <silent> <F4> :NERDTreeToggle<CR>
nnoremap <silent> <F5> :NERDTreeFind<CR>

" ctrl p
noremap <leader>e :CtrlP<cr>
nnoremap <leader>E :CtrlPMixed<cr>

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
hi CursorLine  term=underline cterm=NONE ctermbg=darkblue ctermfg=NONE guibg=NONE guifg=NONE
" Vundle Install Part
call vundle#begin()

" Common Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'kongo2002/fsharp-vim'
Plugin 'kien/ctrlp.vim'
    "plugin 'kien/ctrlp.vim' configuration
    let g:ctrlp_custom_ignore = {
                \ 'dir' : '\v[\/](node_modules|_bower_components)|(.git|.swp)$'
                \ }
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'bling/vim-bufferline'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
    " plugin 'plasticboy/vim-markdown' configuration
    let g:vim_markdown_folding_disabled=1
Plugin 'xsunsmile/showmarks'   
Plugin 'vim-scripts/SearchComplete'
Plugin 'vim-scripts/surround.vim'
Plugin 'vim-scripts/matchit.zip'
Plugin 'vim-scripts/SyntaxAttr.vim'
Plugin 'scrooloose/syntastic'
    " plugn scrooloose/syntastic configuration
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0

Plugin 'rking/ag.vim'

call vundle#end()
