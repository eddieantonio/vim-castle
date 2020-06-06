" Configuration for JavaScript files
" Author: Eddie Antonio Santos <easantos@ualberta.ca>
" See: :help ale

" First, type-check, then style check:
let b:ale_linters = ['eslint']
" First, sort imports, then fix style.
let b:ale_fixers = ['eslint', 'trim_whitespace']

" Run eslint --fix on save:
autocmd BufWrite *.js ALEFix
