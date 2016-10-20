" Clang file paths depending on OS
" OSX 
let s:osx_libclang = "/Library/Developer/CommandLineTools/usr/lib/libclang.dylib"
let s:osx_clangheader = "/Library/Developer/CommandLineTools/usr/lib/clang"

" Arch Linux
let s:al_libclang = "/usr/lib/libclang.so"
let s:al_clangheader = "/usr/lib/clang"

if filereadable(s:osx_libclang)
    let g:deoplete#sources#clang#libclang_path = s:osx_libclang
    let g:deoplete#sources#clang#clang_header = s:osx_clangheader
elseif filereadable(s:al_libclang)
    let g:deoplete#sources#clang#libclang_path = s:al_libclang
    let g:deoplete#sources#clang#clang_header = s:al_clangheader
endif
