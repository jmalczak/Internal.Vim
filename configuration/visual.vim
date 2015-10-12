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
