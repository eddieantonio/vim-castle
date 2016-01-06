" Use Python 3 when the shebang calls for it.
let b:syntastic_python_python_exec = 
  \ syntastic#util#parseShebang()['exe']  =~# '\m\<python3$'
  \ ? 'python3'
  \ : 'python'
