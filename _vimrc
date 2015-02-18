" Vundle settings
set nocompatible
filetype off

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'cdmedia/itg_flat_vim'
Plugin 'kongo2002/fsharp-vim'
call vundle#end()
filetype plugin indent on

" Local settings
set term=xterm
set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
set number
syntax on
colorscheme itg_flat
