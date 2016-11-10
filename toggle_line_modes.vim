" Relative line number by default
set number
set rnu

function! g:SwitchToAbsolute()
    if (&rnu == 1)
        set rnu!
    endif
endfun

function! g:SwitchToRealtive()
    if (&rnu == 0)
        set rnu
    endif
endfun

" When enter into Insert mode change to absolute line number
" When exit swtich back to the relative
autocmd InsertEnter * :call g:SwitchToAbsolute()
autocmd InsertLeave * :call g:SwitchToRealtive()

" Toogles between absolute and relative line modes in normal mode
function! g:LineNumberToggle()
    set rnu!
endfun

nnoremap <Leader>n :call g:LineNumberToggle()<CR>
