" MUcomplete Configuration
" Author: Eddie Antonio Santos <easantos>
" See:  :help mucomplete-customization


set completeopt+=menuone  " Display a menu, even if there is only one option
set completeopt+=noselect  " Have typist explicitly select completion
set completeopt-=preview  " Do not show a window!

set shortmess+=c  " No <hit enter> on completion error/warning/info
set belloff+=ctrlg  " Do not ring bell for completion
let g:mucomplete#enable_auto_at_startup = 1  " Start completions at startup!
