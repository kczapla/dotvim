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
call dein#add('jnurmine/Zenburn')
call dein#add('Shougo/deoplete.nvim')
call dein#add('Shougo/denite.nvim')
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('zchee/deoplete-clang')
call dein#add('zchee/deoplete-jedi')
" Required:
call dein#end()

" Utils
so $HOME/.vim/utils.vim

" Source plugins confg
so $HOME/.vim/cross_line_init.vim
so $HOME/.vim/deoplete_clang.vim
so $HOME/.vim/denite_init.vim
so $HOME/.vim/deoplete_init.vim
so $HOME/.vim/neosnippet_init.vim
