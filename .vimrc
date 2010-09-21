version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set history=50
set nomodeline
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/local/share/vim/vimfiles,/usr/local/share/vim/vim73,/usr/local/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
" vim: set ft=vim :

au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
                         \ exe "normal g'\"" | endif

syntax on
set nocompatible
set hlsearch
set incsearch
set showmatch

set hidden
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
"set number

set encoding=utf-8
set smartindent
set scrolloff=3
set wildmenu
set wildmode=list:longest
set ttyfast
set laststatus=2
"set relativenumber
set undofile

let g:ackprg="ack-grep -H --nocolor --nogroup --column"

" Key Mappings
let mapleader = ","
nnoremap <leader><space> :noh<cr>
map <C-D> :NERDTreeToggle<CR>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
