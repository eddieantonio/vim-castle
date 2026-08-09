" Python linters and fixers.
let b:ale_linters =  ['ruff', 'pyright']
let b:ale_fixers = ['ruff_format']

" Virtualenvs
let b:ale_virtualenv_dir_names = ['.venv', 'venv']
