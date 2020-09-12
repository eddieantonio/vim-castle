" ALE Configuration
" Author: Eddie Antonio Santos <easantos>
" See:  :help ale

" Configure enabled linters; some of the available linters are *profoundly*
" annoying.
let g:ale_linters = {
  \ 'latex': ['chktex'],
  \ 'tex': ['chktex'],
  \ 'javascript': ['eslint'],
  \ 'python': ['mypy', 'black'],
  \ }

let g:ale_fixers = {
  \ 'javascript': ['eslint', 'trim_whitespace'],
  \ 'python': ['isort', 'black', 'trim_whitespace'],
  \ }

" Run eslint --fix on save of JavaScript and Python files
autocmd BufWrite *.js,*.py ALEFix

" Experiment with ALE configuration
let g:ale_sign_error = '🚫'
let g:ale_sign_warning = '⚠️'

"""""""""""""""""""""""""""""" Python settings """""""""""""""""""""""""""""""

" Theses are the directory names I use for virtualenvs.
let b:ale_virtualenv_dir_names = ['.env', '.pyenv', 'venv', 'virtualenv']

" Always show the sign column in Python files.
let b:ale_sign_column_always = 1
