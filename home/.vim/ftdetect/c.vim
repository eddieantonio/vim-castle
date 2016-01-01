" Technically not ``autodetect'' but the use is the same.

" Automatically inserts header guards. Adapted from:
" http://vim.wikia.com/wiki/Automatic_insertion_of_C/C%2B%2B_header_gates
function! s:insert_gates()
  let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
  execute "normal! i#ifndef " . gatename
  execute "normal! o#define " . gatename
  execute "normal! Go#endif /* " . gatename . " */"
  normal! k
endfunction
autocmd BufNewFile *.{h,hpp} call <SID>insert_gates()
