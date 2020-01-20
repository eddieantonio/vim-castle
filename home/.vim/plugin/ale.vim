" ALE Configuration
" Author: Eddie Antonio Santos <easantos>
" See:  :help ale

" Configure enabled linters; some of the available linters are *profoundly*
" annoying.
let g:ale_linters = {
  \ 'latex': ['chktex'],
  \ 'tex': ['chktex'],
  \ }

" Experiment with ALE configuration
let g:ale_sign_error = '🚫'
let g:ale_sign_warning = '⚠️'
