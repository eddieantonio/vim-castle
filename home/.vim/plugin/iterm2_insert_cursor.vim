
" Change the cursor in iTerm2 for insert-mode.
if $TERM_PROGRAM == "iTerm.app"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7" 
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
