" SuperTab configuration.
" Author: Eddie Antonio Santos <easantos@ualberta.ca>

" Use OmniComplete
set omnifunc=syntaxcomplete

" Override 'insert previously insterted text and stop' for SuperTab
let g:SuperTabDefaultCompletionType = 'context'

" This is the same as ctrl+space.
if !has("gui_running")
    imap <C-@> <C-Space>
endif

" Apparently I like Eclipse...
let g:SuperTabMappingForward = '<C-Space>'
let g:SuperTabClosePreviewOnPopupClose = 1
