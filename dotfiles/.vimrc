if v:progname =~? "evim"
  finish
endif

set nocompatible
set backspace=indent,eol,start
set nobackup
set history=100
set ruler
set showcmd
set incsearch
set mouse=a
syntax on
set hlsearch

if has("autocmd")
  filetype plugin indent on
  augroup vimrcEx
  au!
  autocmd FileType text setlocal textwidth=78
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
  augroup END
else
  set autoindent
endif

map Q gq
