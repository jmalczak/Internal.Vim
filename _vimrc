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
    
    call vundle#end()

"}

" Edit settings {
    set backspace=indent,eol,start
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
    hi Search ctermbg=NONE ctermfg=Yellow cterm=NONE 
    hi Search guibg=NONE guifg=Yellow term=NONE 
    hi CursorLine cterm=NONE ctermbg=NONE ctermfg=Yellow guibg=NONE guifg=Yellow
    hi Underlined cterm=NONE ctermbg=NONE ctermfg=Yellow guibg=NONE guifg=Yellow
    set guifont=Lucida_Console:h12:cEASTEUROPE
"}

" Keyboard Mappings {
    vnoremap y ygv<ESC>
    nnoremap ; :
    vnoremap ; :
    nnoremap : ;
    vnoremap : ;
    nnoremap <F4> :NERDTreeToggle<CR>
    inoremap <C-j> <Esc>/[)}"'\]>]<CR>:nohl<CR>a

    " CTRL-X and SHIFT-Del are Cut
    vnoremap <C-X> "+x
    vnoremap <S-Del> "+x

    " CTRL-C and CTRL-Insert are Copy
    vnoremap <C-C> "+y
    vnoremap <C-Insert> "+y

    " CTRL-V and SHIFT-Insert are Paste
    map <C-V>   	"+gP
    map <S-Insert>  	"+gP
"}
