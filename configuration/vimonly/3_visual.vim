syntax on
filetype plugin indent on
let isPowershell=$isPowershell
let home=$HOME
language messages en_US.UTF-8

set encoding=utf-8
" Setting the font to Consolas, 11 pt
if has("gui_running")
    " Make window maximixed for GVim
    au GUIEnter * simalt ~x

    " Remove toolbar and menubar
    set guioptions -=m 
    set guioptions -=T

    " Set fonts
    set guifont=Consolas:h11
endif

if !has("gui_running")
    if !exists("compat")
        set term=xterm
        set t_Co=256
        let &t_AB="\e[48;5;%dm"
        let &t_AF="\e[38;5;%dm"
    endif
endif

" color scheme
colorscheme dracula

" highlight curren line 
set cursorline

" cursorline config
hi CursorLine term=NONE cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
hi Visual ctermfg=NONE ctermbg=240 cterm=NONE guifg=NONE guibg=#44475a gui=NONE
