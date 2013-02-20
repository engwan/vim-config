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
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
" vim: set ft=vim :

au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
                         \ exe "normal g'\"" | endif

set ffs=unix
"set number
"set relativenumber
"set undofile

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

set encoding=utf-8
set smartindent
set scrolloff=3
set wildmenu
set wildmode=list:longest
set ttyfast
set laststatus=2

set fileformats=unix

set runtimepath^=~/.vim/bundle/ctrlp.vim

highlight ExtraWhitespace ctermbg=red guibg=red
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufEnter * match ExtraWhitespace /\s\+$/

" Removes trailing spaces
function TrimWhiteSpace()
  %s/\s*$//
  ''
endfunction

let g:ackprg="ack-grep -H --nocolor --nogroup --column"
let g:ctrlp_cmd = 'CtrlPMixed'
" Sane Ignore For ctrlp
let g:ctrlp_custom_ignore = {'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp$'}

" Key Mappings
let mapleader = ","

nnoremap <leader><space> :noh<cr>
map <leader><leader> :call TrimWhiteSpace()<CR>
map <leader>u :e ++ff=dos<CR>:setlocal ff=unix<CR>

set showbreak=↪

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
