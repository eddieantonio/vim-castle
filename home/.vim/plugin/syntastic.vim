" Syntastic Configuration
" Author: Eddie Antonio Santos <easantos>

" Disable pylint -- Will use Dispatch to lint instead.
let g:syntastic_python_checkers=['python']

" Don't check for Scala. It takes WAY too long.
let g:syntastic_scala_checkers=[]

" Use HTML5 tidy
let g:syntastic_html_tidy_exec = 'tidy5'

" Use PSR2 instead of builtin "standard".
let g:syntastic_php_phpcs_args = "--standard=PSR2"

" Use clang -fsyntax-only
let g:syntastic_cpp_compiler = 'c++'
let g:syntastic_cpp_compiler_options="-fsyntax-only -std=c++0x"

" Why wouldn't you enable this in header files?
let g:syntastic_c_check_header = 1
let g:syntastic_cpp_check_header = 1

" Use JSXHint
let g:syntastic_javascript_checkers = ['eslint']

" Always populate the location list. ALWAYS.
let g:syntastic_always_populate_loc_list = 1
