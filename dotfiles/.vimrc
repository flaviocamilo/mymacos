set nocompatible
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

set number
set ruler
set backspace=indent,eol,start
set history=100
set showcmd
set showmode
set autoread
set hidden
syntax on

set noswapfile
set nobackup
set nowritebackup

set mouse=a

set background=dark
set t_Co=256
set cursorline
set textwidth=120
let &colorcolumn=join(range(121,999), ',')
highlight ColorColumn ctermbg=0 guibg=Black
set smartindent
set shiftwidth=4
set tabstop=4
set noexpandtab
set nofoldenable
filetype plugin on
filetype indent on
set nowrap
set whichwrap=b,s,<,>,[,]
set showmatch
set linebreak

set scrolloff=8
set sidescrolloff=15
set sidescroll=1

set incsearch
set hlsearch
set ignorecase
set smartcase
