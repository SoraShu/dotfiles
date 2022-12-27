"let g:dracula_italic = 0
"let g:dracula_colorterm = 0
"packadd! dracula
"colorscheme dracula
syntax on

set nocompatible
set relativenumber
set showmode
set showcmd
set mouse=i
set autoindent
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set t_Co=256
filetype indent on
set showmatch

set statusline=%F%m%r%h%w%=\ ft=%Y\ %{\"fenc=\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\"+\":\"\").\"\"}\ ff=%{&ff}\ %l/%L
set laststatus=2 "状态栏
set scrolloff=3
