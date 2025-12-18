" Derived from: https://github.com/python/cpython/blob/b85e10fd12b2f2517a8e89c5142c4e4fefec1605/Lib/idlelib/config-highlight.def#L39
hi clear
syntax reset

let g:colors_name = "idlenew"
set background=light

" normal-foreground= #000000
" normal-background= #ffffff
hi Normal guifg=#000000 ctermbg=NONE guibg=#ffffff gui=NONE

" keyword-foreground= #ff7700
" keyword-background= #ffffff
hi Keyword guifg=#ff7700 guibg=NONE
hi Statement guifg=#ff7700 guibg=NONE
hi PreProc guifg=#ff7700 guibg=NONE

" builtin-foreground= #900090
" builtin-background= #ffffff
hi pythonBuiltin guifg=#900090 guibg=NONE

" comment-foreground= #dd0000
" comment-background= #ffffff
hi Comment guifg=#dd0000 guibg=NONE

" string-foreground= #00aa00
" string-background= #ffffff
hi String guifg=#00aa00 guibg=NONE

" definition-foreground= #0000ff
" definition-background= #ffffff
hi Identifier guifg=#0000ff guibg=NONE
hi Type guifg=#0000ff guibg=NONE

" hilite-foreground= #000000
" hilite-background= gray
hi Visual guifg=#000000 guibg=#cccccc

" break-foreground= black
" break-background= #ffff55
" ???
" hit-foreground= #ffffff
" hit-background= #000000
" ???

" error-foreground= #000000
" error-background= #ff7777
hi Error guifg=#000000 guibg=#ff7777

" context-foreground= #000000
" context-background= lightgray
" ???

" linenumber-foreground= gray
" linenumber-background= #ffffff
hi LineNr guifg=#666666 guibg=NONE

" #cursor (only foreground can be set, restart IDLE)
" cursor-foreground= black

" #shell window
" stdout-foreground= blue
" stdout-background= #ffffff

" stderr-foreground= red
" stderr-background= #ffffff
hi ErrorMsg guifg=#ff0000 guibg=#ffffff
"
" console-foreground= #770000
" console-background= #ffffff

" Special
hi Folded guifg=#dd0000 cterm=italic

" QuickScope (shows jump locations)
hi QuickScopePrimary guibg=#ffeeff gui=underline cterm=underline
hi QuickScopeSecondary guibg=#ffffdd gui=underline cterm=underline
