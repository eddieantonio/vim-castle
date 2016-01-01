" An autocommand for Erlang

" Automatically insert Erlang module statement.
" http://vim.wikia.com/wiki/Automatic_insertion_of_C/C%2B%2B_header_gates
function! s:erl_new_module()
  let modname = expand("%:t:r")
  execute "normal! i-module(" . modname . ")."
  execute "normal! o\r-export([]).\r"
  normal! G
endfunction
autocmd BufNewFile *.{erl} call <SID>erl_new_module()
