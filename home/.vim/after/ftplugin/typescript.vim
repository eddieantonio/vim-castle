" TypeScript/Tsuquyomi configuration
let g:tsuquyomi_disable_quickfix = 1

" Some remappings.
nmap <buffer> <C-]> <Plug>(TsuquyomiDefinition)
nmap <buffer> <C-?> <Plug>(TsuquyomiReferences)
nmap <buffer> dr <Plug>(TsuquyomiRenameSymbol)
nmap <buffer> dR <Plug>(TsuquyomiRenameSymbolC)

"autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>
nmap <buffer> <Leader>i : <C-u>echo tsuquyomi#hint()<CR>
