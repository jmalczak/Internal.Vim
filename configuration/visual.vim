language messages en

set encoding=utf-8
" Setting the font to Consolas, 11 pt
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Consolas\ 11
  else
    set guifont=Consolas:h11
  endif
endif

if !has("gui_running")
    set term=xterm
    set t_Co=256
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"
endif

set number
syntax on
filetype plugin indent on

" color scheme
colorscheme monokai

" show 100 characters column
:set colorcolumn=100

" highlight curren line 
:set cursorline
