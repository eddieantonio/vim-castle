" TypeScript stuff
if !exists("g:ycm_semantic_triggers")
 let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']

let g:tsuquyomi_disable_quickfix = 1


" Use Tsuquyomi for syntax checking --- much faster!
let g:syntastic_typescript_checkers = ['tsuquyomi']
let g:syntastic_typescript_tsc_args = '--target ES5'

" Some remappings.
nmap <buffer> <C-]> <Plug>(TsuquyomiDefinition)
nmap <buffer> <C-?> <Plug>(TsuquyomiReferences)
nmap <buffer> dr <Plug>(TsuquyomiRenameSymbol)
nmap <buffer> dR <Plug>(TsuquyomiRenameSymbolC)

"autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>
nmap <buffer> <Leader>i : <C-u>echo tsuquyomi#hint()<CR>
