execute pathogen#infect()

set term=xterm

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smartindent
set smarttab
set autoread
set incsearch
set autochdir
set nowrap
set number
set foldmethod=syntax

set paste

nnoremap <silent> <A-Right> :tabn<CR>
nnoremap <silent> <A-Left> :tabp<CR>

let mapleader = ","

map <leader>C :CtrlPClearCache<cr>

autocmd BufWritePre * :%s/\s\+$//e  " Remove trailing whitespace
filetype plugin indent on
syntax on

highlight Pmenu ctermbg=white
highlight PmenuSel ctermbg=brown ctermfg=white

let g:nerdtree_tabs_open_on_console_startup = 1
let g:vim_markdown_folding_disabled = 1
let g:jsx_ext_required = 0

set wildignore+=*/node_modules/*,*/build/*,*/tmp/*
