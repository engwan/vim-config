"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/home/engwan/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/engwan/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tmhedberg/matchit'
NeoBundle 'flazz/vim-colorschemes'

NeoBundle 'tpope/vim-rails'
NeoBundle 'dsawardekar/ember.vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mustache/vim-mustache-handlebars'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" Sane Ignore For ctrlp
let g:ctrlp_custom_ignore = {'dir': '\.git$\|\.hg$\|\.svn$\|\.yardoc\|node_modules\|bower_components\|public\/images\|public\/system\|log$\|tmp$'}

let g:mustache_abbreviations = 1

let g:NERDTreeWinSize = 40

map <C-n> :NERDTreeToggle<CR>

" Allow switching buffers without saving
set hidden

set nocompatible
set ruler

set autoindent

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set wildmenu
set wildmode=list:longest

set backspace=indent,eol,start

set hlsearch
set ignorecase
set smartcase

filetype plugin indent on
filetype detect

syntax on

set t_Co=256
colorscheme jellybeans

autocmd BufNewFile,BufRead *.axlsx  set syntax=ruby

" Hightlight extra whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufEnter * match ExtraWhitespace /\s\+$/

" Removes trailing spaces
function TrimWhiteSpace()
  %s/\s*$//
  ''
endfunction

" Key Mappings
let mapleader = ","

nnoremap <leader><space> :noh<cr>
map <leader><leader> :call TrimWhiteSpace()<CR>
map <leader>u :e ++ff=dos<CR>:setlocal ff=unix<CR>

set showbreak=↪

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

set backupdir=~/.vim/_backup/
set directory=~/.vim/_swp/
