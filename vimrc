set nocompatible
set t_Co=256

" -------------------
" PLUGINS 
" -------------------
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tkztmk/vim-vala'
Plugin 'bling/vim-airline'

call vundle#end()
filetype plugin indent on

" -------------------
" SYNTAX HIGHLIGHTING
" -------------------
syntax on
syntax enable
let g:solarized_termcolors = 256
set background=dark
colorscheme solarized
highlight MatchParen ctermbg=4


" -------------------
" AIRLINE
" -------------------
set laststatus=2
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" -------------------
" INDENT
" -------------------
set autoindent
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4

" -------------------
" OTHER
" -------------------
set showcmd
set number
set ignorecase
set smartcase
set incsearch
set hlsearch

" remap jj to escape in insert mode.  You'll never type jj anyway, so it's great!
inoremap jj <Esc>
nnoremap JJJJ <Nop>


