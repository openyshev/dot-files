set nocompatible              
filetype off                 

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim' 
Plugin 'junegunn/fzf.vim'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-ruby/vim-ruby'
Plugin 'mxw/vim-jsx'
Plugin 'leafgarland/typescript-vim'
Plugin 'othree/html5.vim'
Plugin 'scrooloose/syntastic'
Plugin 'valloric/youcompleteme'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()            
filetype plugin indent on    

set encoding=utf-8
set fileencodings=utf-8,cp1251
set fileformat=unix
set ttyfast

set title
set showcmd
set wrap
set linebreak
set autoindent
set smartindent
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4

set cursorline
set t_Co=256
if &term =~ '256color'
    set t_ut=
endif
set visualbell
set mouse=a
set history=1000
set backspace=indent,eol,start
set nobackup
set noswapfile

set incsearch
set hlsearch
set ignorecase
set smartcase

set norelativenumber
set number

syntax enable
set background=dark
color dracula
let g:airline_theme='dracula'

let g:ackprg = 'ag -i --nocolor --ignore-dir=build --ignore-dir=node_modules --noaffinity' 

let mapleader = ","

" <Esc><Esc>
" Clear the search highlight in Normal mode
nnoremap <silent> <Esc><Esc> :nohlsearch<CR>:ccl<CR><Esc>

" Disable <Arrow keys>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" Navigate with <Ctrl>-hjkl in Insert mode
inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l

nnoremap j gj
nnoremap k gk

" <Space> = <PageDown>
nnoremap <Space> <PageDown>

" Show buffers
nnoremap <F5> :<C-u>ls<cr>:b
" Go to prev buffer
nnoremap <F6> :<C-u>bp<cr>
" Go to next buffer
nnoremap <F8> :<C-u>bn<cr>
" Delete buffer
nnoremap <F7> :<C-u>bd<cr>

cnoremap <c-e> <end>
inoremap     <c-e> <c-o>$
cnoremap <c-a> <home>
inoremap     <c-a> <c-o>^

" Ctrl+s
noremap <C-s> <esc>:w<CR>
inoremap <C-s> <esc>:w<CR>

nmap ,e :NERDTreeToggle<CR>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber

nmap <Leader>b :Buffers<CR>
nmap <Leader>p :GFiles<CR>
nmap <Leader>t :Tags<CR>

nmap <M-k>    :Ack! "\b<cword>\b" <CR>
nmap <Esc>k   :Ack! "\b<cword>\b" <CR>
nmap <Leader>f :Ack! <space>

nnoremap ,gl :YcmCompleter GoToDeclaration<CR>
