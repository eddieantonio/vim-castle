" Note: this file needs to be loaded AFTER airline initializes
" (so that dictionary we're modifying is defined!)

" iTerm2's built-in powerline font does not have U+E0A3, the CN or column
" number glyph, so just get rid of it!
let g:airline_symbols.colnr = ''
