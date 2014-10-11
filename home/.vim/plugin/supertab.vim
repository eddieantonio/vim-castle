" SuperTab configuration.
" Author: Eddie Antonio Santos <easantos@ualberta.ca>

let g:SuperTabDefaultCompletionType = 'context'

" Override 'insert previously insterted text and stop' for SuperTab
if !has("gui_running")
    imap <C-@> <C-Space>
endif

" Apparently I like Eclipse...
let g:SuperTabMappingForward = '<C-Space>'
let g:SuperTabClosePreviewOnPopupClose = 1
