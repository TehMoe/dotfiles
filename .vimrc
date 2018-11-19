set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'scrooloose/nerdTree'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'mileszs/ack.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'rakr/vim-one'
Plugin 'scrooloose/nerdcommenter'
Plugin 'itchyny/lightline.vim'
Plugin 'ajh17/Spacegray.vim'
Plugin 'sbdchd/neoformat'
Plugin 'tpope/vim-surround'
Plugin 'rainglow/vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
Plugin 'VundleVim/Vundle.vim'

" set rtp+=~/.fzf
"set rtp+=~/usr/local/Cellar/fzf/0.12.0
"set rtp+=~/.fzf.bash
"set rtp+=~/.fzf.zsh
" set rtp+=/usr/local/opt/fzf

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
set so=999

" Spacing
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

"BS past autoindents, line boundaries, and even the start of insertion
set backspace=indent,eol,start

" Theme
syntax enable
set background=dark
colorscheme overflow
set termguicolors
set t_Co=256


" LightLine
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

" YCM fix
let g:ycm_path_to_python_interpreter="/usr/bin/python"

" Format on save
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

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
endif

function! SetupEnvironment()
  let l:path = expand('%:p')
  if l:path =~ '/Users/mmohamed/Projects/emporio'
    setlocal tabstop=2 shiftwidth=2 expandtab smarttab
  elseif l:path =~ '/Users/mmohamed/Projects/admin'
    setlocal tabstop=2 shiftwidth=2 noexpandtab
  elseif l:path =~ '/Users/mmohamed/Projects'
    setlocal tabstop=4 shiftwidth=4
  endif
endfunction
autocmd! BufReadPost,BufNewFile * call SetupEnvironment()
