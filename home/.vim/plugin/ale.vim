" ALE Configuration
" Author: Eddie Antonio Santos <easantos>
" See:  :help ale

" Configure enabled linters; some of the available linters are *profoundly*
" annoying.
let g:ale_linters = {
  \ 'latex': ['chktex'],
  \ 'tex': ['chktex'],
  \ 'javascript': ['eslint'],
  \ 'svelte': ['eslint'],
  \ 'python': ['mypy', 'black'],
  \ }

let g:ale_fixers = {
  \ 'javascript': ['prettier'],
  \ 'python': ['isort', 'black', 'trim_whitespace'],
  \ 'rust': ['rustfmt'],
  \ 'svelte': ['eslint', 'prettier'],
  \ 'typescript': ['eslint', 'prettier'],
  \ }

" Run eslint --fix on save of certain file types
autocmd BufWrite *.js,*.py,*.ts,*.rs ALEFix

" Experiment with ALE configuration
let g:ale_sign_error = '🚫'
let g:ale_sign_warning = '⚠️'

"""""""""""""""""""""""""""""" Python settings """""""""""""""""""""""""""""""

" Theses are the directory names I use for virtualenvs.
let b:ale_virtualenv_dir_names = ['.env', '.pyenv', 'venv', 'virtualenv']

" Always show the sign column in Python files.
let b:ale_sign_column_always = 1

""""""""""""""""""""""""""""""""" C settings """""""""""""""""""""""""""""""""

" Use make --always-make
let g:ale_c_always_make = 1

""""""""""""""""""""""""""""""" Rust settings """"""""""""""""""""""""""""""""

" use --test when running cargo check (reports errors in test cases!)
let g:ale_rust_cargo_check_tests = 1
" use cargo clippy, but only when it's installed!
let g:ale_rust_cargo_use_clippy = executable('cargo-clippy')
