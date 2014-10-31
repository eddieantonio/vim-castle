" THE GRANDE, ALMIGHTY MAP FILE
" Author: Eddie Antonio Santos <easantos@ualberta.ca>

" Don't use Ex mode; use Q for formatting
vnoremap Q gq
nnoremap Q vipgq

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" So U No when U Get UPSET when a mapping is removed from vimSensible
" and U Quickly go to salvage it?
nnoremap Y y$

" Remaps 'jj' to escape! Controversial, though useful.
inoremap jj <ESC>

" Space as Leader
map <Space> <Leader>
" For some weird reason, double space doesn't work.
" Enable this for EasyMotion stuff...
map <Space><Space> <Leader><Leader>

" Ctrl-P -> Ctrl-T
let g:ctrlp_map = '<c-t>'

" Easy window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Hide highlighting with enter
nnoremap <silent> <CR> :nohlsearch<CR>

" Search and replace word under cursor
nnoremap dr :%s/\<<C-r><C-w>\>//g<Left><Left>
" Search and change word under cursor
nnoremap dc :%s/\<<C-r><C-w>\>//g<Left><Left><C-r><C-w>

" Save on Leader w
nnoremap <Leader>w :w<CR>

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

" When I want 2-space tabs!
noremap <Leader>2 :set ts=2 sts=2 sw=2 et<CR>
