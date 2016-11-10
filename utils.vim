" Path to the users home dir
let home_dir = $HOME

set tabstop=4
set shiftwidth=4
set expandtab

" swap files settings
set dir=~/.vim-tmp

" Custom leader key
let mapleader="\<Space>"
" New files
nnoremap <Leader>e :e<Space>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

filetype plugin indent on
syntax enable
colors zenburn

" Virtual envs with essential python packages
let g:python3_host_prog = join([home_dir, '.virtualenvs/pynvim3/bin/python'], '/')
let g:python_host_prog = join([home_dir, '.virtualenvs/pynvim2/bin/python'], '/')
