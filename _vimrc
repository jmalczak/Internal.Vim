" Vundle Settings
set nocompatible
filetype off

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

call vundle#end()

" Encoding Settings
"set encoding=utf-8
"set termencoding=utf8
set term=xterm
set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

" Local Settings
filetype plugin indent on
set number
syntax on
colorscheme itg_flat
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2

" Keyboard Mappings
inoremap jj <esc>
nnoremap ; :
vnoremap ; :
map <C-n> :NERDTreeToggle<CR>
