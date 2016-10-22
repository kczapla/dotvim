nnoremap <Leader>ll :Denite buffer<CR> 
nnoremap <Leader>lf :Denite file_rec<CR> 
call denite#custom#map('insert', "\<C-j>", 'move_to_next_line')
call denite#custom#map('insert', "\<C-k>", 'move_to_prev_line')
