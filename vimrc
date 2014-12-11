"Vundle options
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle required! 
Bundle 'gmarik/vundle'

">>>>>>>>>>>>>>>>>>>>Plugins<<<<<<<<<<<<<<<<<<<<<<
"Powerline bundle
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"Fugitive bundle
Bundle 'tpope/vim-fugitive'
"NerdTree Bundle
Bundle 'scrooloose/nerdtree'
"PythonMode bundle
Bundle 'klen/python-mode'
">>>>>>>>>>>>>>>>>>>>Color Scheme<<<<<<<<<<<<<<<<<
Bundle 'nanotech/jellybeans.vim'

filetype plugin indent on 

"Wide of line in python
augroup vimrc_autocmds
            autocmd!
            "highlight characters past column 120
            autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
            autocmd FileType python match Excess /\%120v.*/
            autocmd FileType python set nowrap
            augroup END

"Color scheme
syntax on
colorscheme jellybeans 
set number
set encoding=utf-8
set t_Co=256
"set bg=dark

"Atomatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

"tab options
set expandtab
set tabstop=4

"Swiching off swaps and backups files
set nobackup
set nowritebackup
set noswapfile

"folding setting
set foldmethod=indent "fold based on indent
set foldnestmax=10 "deepest fold is 10 lvls
set nofoldenable "dont fold by defoult
set foldlevel=1 

"New key leader 
let mapleader = ","

"Tab navigation shortcuts
nmap <Leader>l :tabp<CR>
nmap <Leader>n :tabe<Space>
nmap <Leader>c :tabc<CR>
nmap <Leader>r :tabnext<CR> 

"leader and mapping
let mapleader = ","

"switch to previous tab
nmap <Leader>l :tabp<CR> 
"Open new file
nmap <Leader>n :tabe<CR> 
"Open file from location
nmap <Leader>o :tabe<Space> 
"Save current file
nmap <Leader>c :tabc<CR>
nmap <Leader>r :tabnext<CR> 
nmap <Leader>q :qall!<CR>


" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

" NerdTree setup
map <F2> :NERDTreeToggle<CR>

" Python-mode
" Activate rope
"  keys:
"  K             Show python docs
"  <Ctrl-Space>  Rope autocomplete
"  <Ctrl-c>g     Rope goto definition
"  <Ctrl-c>d     Rope show documentation
"  <Ctrl-c>f     Rope find occurrences
"  <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
"  [[            Jump on previous class or function (normal, visual, operator modes)
"  ]]            Jump on next class or function (normal, visual, operator, modes)
" " [M            Jump on previous class or method (normal, visual, operator, modes)
" " ]M            Jump on next class or method (normal, visual, operator, modes)
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

" Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
"
" Don't autofold code
let g:pymode_folding = 0
