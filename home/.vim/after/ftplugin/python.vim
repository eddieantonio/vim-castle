" Ignore pyc files
set wildignore+=*.pyc

" Switch between Python 2 and Python 3 checking.
" Adapted from: https://stackoverflow.com/a/43125342/6626414
function! Py2()
  let g:syntastic_python_python_exec = 'python2'
endfunction

function! Py3()
  let g:syntastic_python_python_exec = 'python3'
endfunction

" Set up syntax checkers.
let g:syntastic_python_checkers = [ 'python', 'mypy', 'pycodestyle' ]
let g:syntastic_python_mypy_exec = 'syntastic-mypy'
let g:syntastic_python_pycodestyle_exec = 'syntastic-pycodestyle'

call Py3()
