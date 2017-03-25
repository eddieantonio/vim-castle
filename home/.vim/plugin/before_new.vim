" Pastes some boilerplate when creating new files.
" Author: Eddie Antonio Santos <easantos@ualberta.ca>

" For C header files:

" Automatically inserts header guards. Adapted from:
" http://vim.wikia.com/wiki/Automatic_insertion_of_C/C%2B%2B_header_gates
function! s:c_insert_gates()
  let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
  execute "normal! i#ifndef " . gatename
  execute "normal! o#define " . gatename
  execute "normal! Go#endif /* " . gatename . " */"
  normal! k
endfunction
autocmd BufNewFile *.{h,hpp} call <SID>c_insert_gates()

" For Erlang files:
" Automatically insert Erlang module statement.
" http://vim.wikia.com/wiki/Automatic_insertion_of_C/C%2B%2B_header_gates
function! s:erl_new_module()
  let modname = expand("%:t:r")
  execute "normal! i-module(" . modname . ")."
  execute "normal! o\r-export([]).\r"
  normal! G
endfunction
autocmd BufNewFile *.{erl} call <SID>erl_new_module()


" For Python files:
" Automatically insert Python preamble.
" http://vim.wikia.com/wiki/Automatic_insertion_of_C/C%2B%2B_header_gates
function! s:py_new_module()
  let shebang = "#!/usr/bin/env python3"
  execute "normal! i" . shebang
  execute "normal! o" . "# -*- coding: UTF-8 -*-"
  execute "normal! o\r"
  normal! G
endfunction
autocmd BufNewFile *.py call <SID>py_new_module()
