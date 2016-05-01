" set time vim waits for next character
set timeoutlen=200

" set leader key
let mapleader = "\,"

" set not compatible with vi
set nocompatible
" Make bundle work
set rtp+=~/.vim/bundle/Vundle.vim

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
    let NERDTreeIgnore = ['\.pyc$']
    " plugin 'scrooloose/nerdtree" configuration
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
Plugin 'itchyny/lightline.vim'
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
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-dispatch'
Plugin 'scrooloose/syntastic'
    " plugin scrooloose/syntastic configuration
    let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues']
    let g:syntastic_aggregate_errors = 1
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'tmhedberg/SimpylFold'

call vundle#end()
