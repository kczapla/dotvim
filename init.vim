set tabstop=4
set shiftwidth=4
set expandtab


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('~/.vim/bundles/')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/deoplete.nvim')
call dein#add('Shougo/deoplete-jedi.nvim')
call dein#add('Shougo/denite.nvim')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable
let g:python3_host_prog = '/home/kczapla/.virtualenvs/neovim/bin/python'
let g:python_host_prog = '~/.virtualenvs/neovim2/bin/python'
so $HOME/.vim/denite_init.nvim
" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------
