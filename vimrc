syntax on
set showmode
set showcmd
set mouse=a
set encoding=utf-8
set t_Co=256
set autoindent
set relativenumber
set textwidth=107
set showmatch
set incsearch
set smartcase

set undofile
set history=1000

set nowrap

filetype plugin indent on

set nu
set sw=4
set ts=4
set ai
set si

set hls

set expandtab
set softtabstop=4

set clipboard=unnamedplus

set tags=./tags,tags;$HOME

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Automatically remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
