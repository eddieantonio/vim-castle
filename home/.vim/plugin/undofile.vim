if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This uses ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  " See: https://www.reddit.com/r/vim/comments/2ib9au/why_does_exiting_vim_make_the_next_prompt_appear/cl1p3dq/
  let s:vim_undodir = expand('$HOME/.vim/undo')
  if filewritable(s:vim_undodir) == 0 && exists("*mkdir")
    call mkdir(s:vim_undodir, "p", 0700)
  endif
  execute "set undodir=".s:vim_undodir
  set undofile
endif
