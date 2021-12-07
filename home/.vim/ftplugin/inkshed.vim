" Setup Vim for freewriting/inkshedding.
" 
" Inkshedding is the first step of my writing process. This involves two
" steps:
"  1. Absorbing some sort of information
"  2. Immediately begin reflecting on the information through freewriting 
"
" The goal is to commit the raw, unedited mental thought process on to a
" permanent medium. Things that gunk up the stream of conciousness include:
"  - attempting to edit the writing
"  - seeing the red underlying of spellcheck 
"
" This filetype aims to turns off distractors, clearing the way for thoughts
" to be typed into an editor.  Typically, this freewriting is then taken and
" mined to find the gems of insight in the otherwise unreadable mess that it
" typically turns into.

" Turn off spell checker
setlocal nospell

" Turn off annoying indentation
setlocal noautoindent
setlocal nocindent

" You should not backspace in freewriting!
inoremap <buffer> <BS> <Nop>
