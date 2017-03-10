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
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'mileszs/ack.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'rakr/vim-one'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
Plugin 'VundleVim/Vundle.vim'

syntax on
colorscheme onedark
let g:airline_theme='one'

"set rtp+=~/.fzf
"set rtp+=~/usr/local/Cellar/fzf/0.12.0
"set rtp+=~/.fzf.bash
"set rtp+=~/.fzf.zsh
nnoremap <C-p> :FZF<CR>
let $FZF_DEFAULT_COMMAND = 'ag -l --ignore=node_modules --ignore=ansible-playbooks'

" General
set ruler
set colorcolumn=120
"highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
set hlsearch
"set number
set relativenumber
" set cmdheight=2
set t_Co=256
set so=999

" Spacing
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

" Airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

