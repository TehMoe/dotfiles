set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'scrooloose/nerdTree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
Plugin 'VundleVim/Vundle.vim'
Plugin 'junegunn/fzf'

" General
syntax on
"set rtp+=~/.fzf
"set rtp+=~/usr/local/Cellar/fzf/0.12.0
"set rtp+=~/.fzf.bash
"set rtp+=~/.fzf.zsh
nnoremap <C-p> :FZF<CR>
set ruler
"set number
set relativenumber
" set cmdheight=2

" Spacing
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
