" ALE Configuration
" Author: Eddie Antonio Santos <easantos>
" See:  :help ale

" Configure enabled linters; some of the available linters are *profoundly*
" annoying.
let g:ale_linters = {
  \ 'python': ['mypy', 'pycodestyle', 'isort'],
  \ 'latex': ['chktex'],
  \ 'tex': ['chktex'],
  \ }

let g:ale_fixers = {
  \ 'python': ['autopep8', 'isort']
  \ }

" Theses are the directory names I use for virtualenvs.
let g:ale_virtualenv_dir_names = ['.env', '.pyenv', 'venv', 'virtualenv']
