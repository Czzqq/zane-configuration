syntax on
filetype plugin indent on

set nu
set sw=4
set ts=4
set ai
set si

set hls

set expandtab

set clipboard=unnamedplus

set tags=./tags,tags;$HOME

" Highlight trailing whitespace  
highlight ExtraWhitespace ctermbg=red guibg=red  
match ExtraWhitespace /\s\+$/

" Automatically remove trailing whitespace on save  
autocmd BufWritePre * :%s/\s\+$//e  
