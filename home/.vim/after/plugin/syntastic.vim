" Syntastic Configuration
" Author: Eddie Antonio Santos <easantos>

" Disable pylint -- Will use Dispatch to lint instead.
let g:syntastic_python_checkers=['python']

" Don't check for Scala.
let g:syntastic_scala_checkers=[]

" Use clang -fsyntax-only
let g:syntastic_cpp_compiler = 'c++'
let g:syntastic_cpp_compiler_options="-fsyntax-only -std=c++0x"

" Why wouldn't you enable this in header files?
let g:syntastic_c_check_header = 1
let g:syntastic_cpp_check_header = 1
