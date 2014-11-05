" Pandoc options.
setlocal textwidth=72 tabstop=4 shiftwidth=4 expandtab
" Make pressing tab insert two space instead of a full tab (useful for
" indenting lists numbers, definitions and the like).
setlocal softtabstop=2

" Disable '2' which is incompatible with n.
setlocal formatoptions-=2
" See `:help fo-table` for more info.
setlocal formatoptions+=tcqn

hi NonText term=bold ctermfg=238 ctermbg=235

