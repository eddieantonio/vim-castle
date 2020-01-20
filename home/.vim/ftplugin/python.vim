" Configuration for Python files
" Author: Eddie Antonio Santos <easantos@ualberta.ca>
" See: :help ale

" First, type-check, then style check:
let b:ale_linters = ['mypy', 'black']
" First, sort imports, then fix style.
let b:ale_fixers = ['isort', 'black']


" Theses are the directory names I use for virtualenvs.
let b:ale_virtualenv_dir_names = ['.env', '.pyenv', 'venv', 'virtualenv']

" Always show the sign column in Python files.
let b:ale_sign_column_always = 1

autocmd BufWrite *.py ALEFix
