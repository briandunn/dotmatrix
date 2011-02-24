" Needed on some linux distros.
" see http://www.adamlowe.me/2009/12/vim-destroys-all-other-rails-editors.html
filetype on
filetype off 
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
set grepprg=ack\ --column\ -a
set grepformat=%f:%l:%c:%m
syntax on
set foldmethod=syntax
filetype plugin indent on
autocmd FileType ruby,eruby set tabstop=2 tw=0 sw=2 expandtab foldmethod=indent
" Jump to the window the buffer is in if there is one
set swb=usetab
set nocompatible
set showmatch
set incsearch
set hlsearch
set showcmd
set laststatus=2
set statusline=%<%f\ %m%r%h%w%=[ln%3l][col%3c]
set listchars=tab:»·,trail:·,eol:¬
set wildmenu
