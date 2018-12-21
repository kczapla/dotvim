if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')
    
    call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

    " Add or remove your plugins here:
    call dein#add('gioele/vim-autoswap')
    call dein#add('godlygeek/tabular')
    call dein#add('davidhalter/jedi-vim')
    call dein#add('jnurmine/Zenburn')
    call dein#add('ledger/vim-ledger')
    call dein#add('Shougo/deoplete.nvim')
    call dein#add('Shougo/denite.nvim')
    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/neosnippet-snippets')
    call dein#add('honza/vim-snippets')
    call dein#add('neomake/neomake')
    call dein#add('plasticboy/vim-markdown')
    call dein#add('scrooloose/nerdcommenter')
    call dein#add('zchee/deoplete-clang')
    call dein#add('zchee/deoplete-jedi')

    call dein#end()
    call dein#save_state()

endif

" Utils
so $HOME/.vim/utils.vim

" Source plugins confg
so $HOME/.vim/cross_line_init.vim
so $HOME/.vim/deoplete_clang.vim
so $HOME/.vim/denite_init.vim
so $HOME/.vim/deoplete_init.vim
so $HOME/.vim/neosnippet_init.vim
so $HOME/.vim/nerdcommenter_init.vim
so $HOME/.vim/toggle_line_modes.vim
