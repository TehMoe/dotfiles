set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'scrooloose/nerdTree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/fzf'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
Plugin 'VundleVim/Vundle.vim'

syntax on
"set rtp+=~/.fzf
"set rtp+=~/usr/local/Cellar/fzf/0.12.0
"set rtp+=~/.fzf.bash
"set rtp+=~/.fzf.zsh
nnoremap <C-p> :FZF<CR>
let $FZF_DEFAULT_COMMAND = 'ag -l --ignore=node_modules --ignore=ansible-playbooks'

" General
set ruler
set colorcolumn=120
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
set hlsearch
"set number
set relativenumber
" set cmdheight=2
set t_Co=256
set so=999

" Spacing
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

" Airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

