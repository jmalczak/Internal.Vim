"-------------------------------------------------"
" Author: Jakub Malczak                           "
" Homepage: http://malczak.net                    "
"-------------------------------------------------"

" Not compatible with vi
set nocompatible

" Vundle plugin configuration {

    " Vundle Install Part
    call vundle#begin()

    " Common Plugins
    Plugin 'gmarik/Vundle.vim'
    Plugin 'leafgarland/typescript-vim'
    Plugin 'kongo2002/fsharp-vim'
    Plugin 'kien/ctrlp.vim'
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
    
    call vundle#end()

"}

" Terminal encoding settings {
    set t_Co=256
"}


" Edit settings {
    filetype plugin indent on
    set number
    syntax on
    filetype plugin indent on
    set tabstop=4
    set shiftwidth=4
    set softtabstop=4
    set expandtab
    set smartindent
    set laststatus=2
    set nospell
    set incsearch 
    set lazyredraw
    set ttyfast
    highlight Search ctermbg=yellow ctermfg=black cterm=NONE 
    highlight Search guibg=yellow guifg=black term=NONE 
    set guifont=Lucida_Console:h12:cEASTEUROPE
"}

" Keyboard Mappings {
    vnoremap y ygv<ESC>
    nnoremap ; :
    vnoremap ; :
    nnoremap : ;
    vnoremap : ;
    map <C-n> :NERDTreeToggle<CR>
    inoremap <C-j> <Esc>/[)}"'\]>]<CR>:nohl<CR>a
"}
