" My new .vimrc
" Maintainer: Eddie Antonio Santos <hello@eddieantonio.ca>
" Version:    2026.08.08

" ==========================================================================
" Options taken from vim-sensible
" See: https://github.com/tpope/vim-sensible/blob/v2.0/plugin/sensible.vim
" ==========================================================================

if &compatible
  set nocompatible
endif

" Sane backspace options
set backspace=indent,eol,start

" Disable completion of keywords in included files (e.g., #include in C).
" This can result in slow, recursive scanning of hundreds of files of dubious relevance.
set complete-=i

" Sane tab behaviour (respect softtabstop — also affects backspace)
set smarttab

" Disable octal numbers for Ctrl+A/Ctrl+X
set nrformats-=octal

" Set a much faster timeout for escape sequences.
if !has('nvim') && &timeoutlen == -1
  set ttimeout
  set ttimeoutlen=100
endif

" Enable incsearch, but only when vim can time itself to avoid searching for a
" more than half a second.
if has('reltime')
  set incsearch
endif

" Highlights all instances of the last searched pattern.
set hlsearch
" Press Ctrl+L to clear the highlighting of hlsearch (updates diff mode too!)
nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
" TODO: consider packadd! nohlsearch

" Always show the status line
set laststatus=2
" ...with the ruler
set ruler
" ...and enhanced command mode
set wildmenu

" Keep at least one line when scrolling:
set scrolloff=1

" When scrolling horizontally, allow single character scrolling
set sidescroll=1
set sidescrolloff=2

" Affects the @@@ displayed on the last line of a file with very long lines
" (or when you open a binary in vim)
if has('patch-7.4.2109')
  set display+=truncate
else
  set display+=lastline
endif

" Characters to use for :set list
set listchars=tab:⇥·,trail:␣,eol:¶,nbsp:·,extends:⇉,precedes:⇇

" Intelligently remove comment leaders when joining lines with 'J':
if v:version > 703
  set formatoptions+=j
endif

" Replace the check for a tags file in the parent directory of the current
" file with a check in every ancestor directory.
if has('path_extra') && (',' . &g:tags . ',') =~# ',\./tags,'
  setglobal tags-=./tags tags-=./tags; tags^=./tags;
endif

" Automatically reload files when they have been modified by a different
" program. 
set autoread

" A longer command/search history:
set history=1000

" Maximum tabs to open with vim -p (I never use tabs...)
set tabpagemax=60

" Save and restore g:UPPERCASE variables in .viminfo
if !empty(&viminfo)
  set viminfo^=!
endif

" Do not persist options/maps in sessions (bad idea)
set sessionoptions-=options
set viewoptions-=options

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^Eterm'
  set t_Co=16
endif

" (vim-sensible has a workaround for Fish on Vim <= 7.04 but I don't need it)

" Disable a legacy behavior that can break some plugin maps.
if has('langmap') && exists('+langremap') && &langremap
  set nolangremap
endif

" Enable filetype detection and syntax highlighting:
filetype plugin indent on
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

" Lets you undo pressing Ctrl+U/Ctrl+W in the insert mode.
inoremap <C-U> <C-G>u<C-U>
inoremap <C-W> <C-G>u<C-W>

" From `:help :DiffOrig`.
" :DiffOrig opens a new scratch window that lets you see the differences
" between the buffer and the last saved copy of the file.
if exists(":DiffOrig") != 2
  command DiffOrig vert new | set bt=nofile | r++edit # | 0d_
        \ | diffthis | wincmd p | diffthis
endif

" Enables highlighting for “new” shell features when highlighting .sh files:
" See $VIMRUNTIME/syntax/sh.vim
if !(exists('g:is_posix') || exists('g:is_bash') || exists('g:is_kornshell') || exists('g:is_dash'))
  let g:is_posix = 1
endif

" Enable the :Man command shipped inside Vim's man filetype plugin.
if exists(':Man') != 2 && !exists('g:loaded_man') && &filetype !=? 'man' && !has('nvim')
  runtime ftplugin/man.vim
endif

" ==========================================================================
" My personal Vim defaults:
" ==========================================================================

" Default to UTF-8 encoding:
setglobal fileencoding=utf-8

" c: auto-wrap comments based on textwidth
" 2: use the ident of the second line of the paragraph (e.g., Markdown lists)
" l: do not break long lines in insert mode
set formatoptions+=cl2

" Show the current normal command sequence in the status bar
set showcmd

" Enable true-color mode in terminals that support it.
if has('termguicolors') || has('vcon')
  set termguicolors
endif

" Hack for Ghostty to enable undercurls (squigglies)
if $TERM == "xterm-ghostty"
  let &t_Cs = "\e[4:3m"
  let &t_Ce = "\e[4:0m"
endif

" Use <Space> as leader (it's really good!)
let mapleader=" "

" Jump to the last position in the file
" (excluding commits, rebases, hex views, diffs)
" See :help last-position-jump
augroup RestoreCursor
  autocmd!
  autocmd BufReadPost *
    \ let line = line("'\"")
    \ | if line >= 1 && line <= line("$") && &filetype !~# 'commit'
    \      && index(['xxd', 'gitrebase'], &filetype) == -1
    \      && !&diff
    \ | execute "normal! g`\""
    \ | endif
augroup END

" Enable mouse in all modes:
if has('mouse')
  set mouse=a
endif

" Consider this instead of what vim-sensible did.
packadd! matchit

" Configure wrapping
" Off by default:
setglobal nowrap
set linebreak
set showbreak=»»»»
set wrapmargin=1

" Searching stuff
set ignorecase
set smartcase

set visualbell

" Show a title in the terminal
set title

" Per-project .vimrc
" (useful for setting ALE flags)
set exrc
set secure
set modeline
set modelines=5

" Yank into the system clipboard by default
" https://jvns.ca/til/vim-osc52
if has('clipboard')
  set clipboard=unnamed
endif

" ==========================================================================
" Packages distributed with Vim:
" ==========================================================================

" Support .editorconfig files
packadd! editorconfig

" Highlight yank for a bit
packadd hlyank

" ==========================================================================
" What Eddie relies on:
"  - Unicode plugin
"  - the thing that auto-determines the shiftwidth setting!
"  - map U
"  - map yo*
"  - file history restoration
"  - EasyMotion
"  - nmap: <Space><Space>
"  - nmap: <Space>w 
"  - [e mapping
