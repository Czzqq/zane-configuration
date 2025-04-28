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
set laststatus=2
set statusline=%f%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v]\ [%p%%]

set undofile
set undodir=$HOME/.vim/undo/

set directory=$HOME/.vim/swap/

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

set list
set listchars=tab:>-,trail:-

set clipboard=unnamedplus
"set clipboard+=unnamed

set tags=./tags,tags;$HOME

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=grey guibg=grey
match ExtraWhitespace /\s\+$/

" Automatically remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Keymap
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap H :bprevious<CR>
nnoremap L :bnext<CR>

" the silver searcher
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    " let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    "" let g:ctrlp_user_command = 'ag %s --nocolor -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    "" let g:ctrlp_use_caching = 1
endif
