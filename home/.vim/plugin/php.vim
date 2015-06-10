" See: https://github.com/StanAngeloff/php.vim/blob/master/syntax/php.vim#L35
let g:php_sql_query = 0
let g:php_ignore_phpdoc = 0
let g:php_var_selector_is_identifier = 1

" Highlight tags in phpdoc. It... sometimes works.
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
