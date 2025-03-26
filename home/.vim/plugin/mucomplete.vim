" MUcomplete Configuration
" Author: Eddie Antonio Santos <easantos>
" See:  :help mucomplete-customization

set completeopt+=menuone  " Display a menu, even if there is only one option
set completeopt+=noselect  " Have typist explicitly select completion
set completeopt-=preview  " Do not show a window!

set shortmess+=c  " No <hit enter> on completion error/warning/info
set belloff+=ctrlg  " Do not ring bell for completion
let g:mucomplete#enable_auto_at_startup = 1  " Start completions at startup!

" A few overrides for mucompletion. In particular, pandoc would use keyword
" completion and omnicompletion, and this would grind editing down to a
" halt. Really makes me wonder what omnicompletion/keyword completion was
" doing.
"
" To edit this furher, see
"	:help g:mucomplete#chains
"	:help mucomplete-methods
let g:mucomplete#chains = {
	\ 'default'  : ['path', 'omni', 'keyn', 'dict', 'uspl'],
	\ 'markdown' : ['path', 'uspl'],
	\ 'pandoc'   : ['path', 'uspl'],
	\ 'tex'      : ['path', 'omni'],
	\ 'vim'      : ['path', 'cmd', 'keyn']
	\ }
