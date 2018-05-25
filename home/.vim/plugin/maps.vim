" THE GRANDE, ALMIGHTY MAP FILE
" Author: Eddie Antonio Santos <easantos@ualberta.ca>

" Space as Leader
map <Space> <Leader>
" For some weird reason, double space doesn't work.
" Enable this for EasyMotion stuff...
map <Space><Space> <Leader><Leader>

" Don't use Ex mode; use Q for formatting
vnoremap Q gq
nnoremap Q vipgq

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" So U No when U Get UPSET when a mapping is removed from vimSensible
" and U Quickly go to salvage it?
nnoremap Y y$

" fzf TODO: extract into its own file.
nnoremap <Leader><Tab> :GFiles<CR>
nnoremap <Leader><S-Tab> :Files<CR>


" Easy split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Yank to the operating system clipboard (normal mode and visual mode):
nnoremap <C-y> "+y
vnoremap <C-y> "+y
" Paste from the operating system clipboard:
nmap <C-p> "+p

" Hide highlighting with enter
nnoremap <silent> <CR> :nohlsearch<CR>

" Search and [r]eplace word under cursor
nnoremap dr :%s/\<<C-r><C-w>\>//g<Left><Left>
" Search and [c]hange word under cursor
nnoremap dc :%s/\<<C-r><C-w>\>//g<Left><Left><C-r><C-w>

" (from http://stackoverflow.com/a/597932)
" Search and ([s]cope) [r]eplace word under cursor
nnoremap dsr gd[{V%::s/<C-R>///gc<Left><Left><Left>
" Search and ([s]cope) [c]hange word under cursor
nnoremap dsc gd[{V%::s/<C-R>///gc<Left><Left><Left>

" Save on <Leader> w
nnoremap <Leader>w :w<CR>

" (In OS X) Opens the current file in the default application.
nnoremap <Leader>o :!open %<CR><CR>
" (In OS X) Allows me to choose what to open.
nnoremap <Leader>O :!open<SPACE>
" (In OS X) Opens the current working directory in Finder.
nnoremap <silent> <Leader><C-O> :!open .<CR><CR>

" Vim-Dispatch, I guess...
nnoremap <Leader>m :Make<CR>

" Using vim-preserve
" Strip all trailing whitespace in a file
nnoremap <Leader>$ :call Preserve("%s/\\s\\+$//e")<CR>
" Reformat the entire file
nnoremap <Leader>= :call Preserve("normal gg=G")<CR>
" Copy the entire file into system clipboard.
nnoremap <Leader>y :call Preserve("normal gg\"+yG")<CR>

" EasyMotion
" Use a different prefix...
map <Leader>f <Plug>(easymotion-prefix)
" ...to make way for the versitile 's' motion!
map <Leader><Leader> <Plug>(easymotion-s)

" Vi. Live it.
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Toggle Git Gutter.
nnoremap cog :GitGutterToggle<CR>

" Toggle vim-signatures (shows marks).
nnoremap com :SignatureToggle<CR>

" Toggle vim-signatures (shows marks).
nnoremap cot :TagbarToggle<CR>

" When I want 2-space tabs!
noremap <Leader>2 :set ts=2 sts=2 sw=2 et<CR>
" When I want 4-space tabs!
noremap <Leader>4 :set ts=4 sts=4 sw=4 et<CR>
" When I want hard tabs!
noremap <Leader>8 :set ts=8 sts=8 sw=8 noet<CR>

" Invoke :AleFix by typing 'caf' ("change ALE fix")
map caf <Plug>(ale_fix)

" I never use the default of 'U' so map it to UnicodeName instead.
noremap U :UnicodeName<CR>

" Sorts space-separated items in the current line.
command SortLine call s:SortLine()
function! s:SortLine()
	" From: http://stackoverflow.com/a/1328392/6626414
	let l:components = split(getline('.'), ' ')
	call setline('.', join(sort(l:components), ' '))
endfunction
