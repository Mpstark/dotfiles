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
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'

Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'

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
" ULTISNIPS + YOUCOMPLETEME
" -------------------
" taken from http://stackoverflow.com/a/22253548
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" -------------------
" WINDOW MANAGEMENT
" -------------------
map <C-n> :NERDTreeToggle<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <S-j> :bn<CR>
map <S-k> :bp<CR>

" -------------------
" WHITESPACE
" -------------------

function! Preserve(command)
    " preparation: save last search, and cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    execute a:command
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

nmap <S-F12> :call Preserve("normal gg=G")<CR>
nmap <F12> :call Preserve("%s/\\s\\+$//e")<CR>

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
set noshowmode
set number
set relativenumber
set ignorecase
set smartcase
set incsearch
set hlsearch
set hidden

" remap jj to escape in insert mode.  You'll never type jj anyway, so it's great!
inoremap jj <Esc>
