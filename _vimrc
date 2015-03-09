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
    Plugin 'cdmedia/itg_flat_vim'
    Plugin 'kongo2002/fsharp-vim'
    Plugin 'kien/ctrlp.vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'itchyny/lightline.vim'

        " Plugin 'itchyny/lightline.vim' configuration

        let g:lightline = {
        \ 'colorscheme': 'jellybeans',
        \ }

    Plugin 'bling/vim-bufferline'

    call vundle#end()

"}

" Terminal encoding settings {
    set term=xterm
    set t_Co=256
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"
"}


" Edit settings {
    filetype plugin indent on
    set number
    syntax on
    colorscheme itg_flat
    filetype plugin indent on
    set tabstop=4
    set shiftwidth=4
    set expandtab
    set laststatus=2
"}

" Keyboard Mappings {
    inoremap jj <esc>
    nnoremap ; :
    vnoremap ; :
    map <C-n> :NERDTreeToggle<CR>
"}