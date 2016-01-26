set term=xterm

set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smarttab

autocmd BufWritePre * :%s/\s\+$//e  " Remove trailing whitespace
syntax on
filetype plugin indent on
