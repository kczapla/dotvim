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


" Source plugins confg
so $HOME/.vim/utils.nvim
so $HOME/.vim/denite_init.nvim
