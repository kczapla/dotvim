nnoremap <Leader>ll :Denite buffer<CR> 
nnoremap <Leader>lf :Denite file_rec<CR> 
nnoremap <Leader>jf :DeniteProjectDir file_rec<CR>
nnoremap <Leader>jl :DeniteProjectDir buffer<CR>

" Change ignore_globs
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
  \ [ '.git/', '.ropeproject/', '__pycache__/',
  \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])
