" Conceal for everything EXCEPT super/subscripts
setlocal conceallevel=2
let g:tex_conceal="adgm"

" Use 'c' to surround a tex command.
" See: https://github.com/tpope/vim-surround/issues/47#issuecomment-4254383
let g:surround_{char2nr('c')} = "\\\1command\1{\r}"
