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
call dein#add('Shougo/deoplete.nvim')
call dein#add('zchee/deoplete-jedi')
call dein#add('Shougo/denite.nvim')
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
" Required:
call dein#end()


" Source plugins confg
so $HOME/.vim/denite_init.nvim
so $HOME/.vim/deoplete_init.nvim
so $HOME/.vim/neosnippet_init.nvim
so $HOME/.vim/utils.nvim
