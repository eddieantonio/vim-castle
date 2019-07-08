" .vimrc
" Author: Eddie Antonio Santos <easantos@ualberta.ca>
" See also: .vim/plugins and .vim/after/plugins

" Automatically install vim-plug
if !has('win32') && empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug first -- Relying on sensible.vim
call plug#begin('~/.vim/plugged')

" Colour scheme
Plug 'aonemd/kuroi.vim'


" Languages
Plug 'pangloss/vim-javascript', { 'for': 'javascript' } | Plug 'mxw/vim-jsx'
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'jakar/vim-json', { 'for': 'json' }
Plug 'lervag/vimtex'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'wannesm/wmgraphviz.vim', { 'for': 'dot'}
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'Quramy/vim-js-pretty-template', { 'for': ['javascript', 'typescript'] }
Plug 'rhysd/vim-llvm'
Plug 'vim-scripts/lexctwolc-Syntax-Highlighter'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'burner/vim-svelte'

" Tim Pope awesomeness.
Plug 'tpope/vim-dispatch', { 'on': 'Make' }
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-apathy'

" Fuzzy file finder. Enable only if it is locally installed.
if !empty(glob('/usr/local/opt/fzf'))
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'
endif

" Syntax errors and linters
if v:version >= 800
  " Works only in Vim 8+ and NeoVim
  Plug 'w0rp/ale'
endif

" Completion
Plug 'lifepillar/vim-mucomplete'

" Other.
Plug 'vim-scripts/a.vim', { 'for': ['c', 'cpp'] }
Plug 'vim-airline/vim-airline'
Plug 'easymotion/vim-easymotion'
Plug 'tommcdo/vim-exchange'
Plug 'RRethy/vim-hexokinase'
Plug 'RRethy/vim-illuminate'
Plug 'michaeljsmith/vim-indent-object'
Plug 'antoyo/vim-licenses'
Plug 'andymass/vim-matchup'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-pandoc/vim-pandoc'
Plug 'eddieantonio/vim-preserve'
Plug 'AndrewRadev/sideways.vim'
Plug 'kshenoy/vim-signature'
Plug 'rstacruz/sparkup', { 'rtp': 'vim/' }
Plug 'AndrewRadev/splitjoin.vim'
Plug 'godlygeek/tabular'
Plug 'wincent/terminus'  " Automatic cursor shape and bracketed paste mode!
Plug 'markonm/traces.vim'
Plug 'chrisbra/unicode.vim'

" Type Cree syllabics using digraphs
Plug 'eddieantonio/vim-nehiyawewin'

" Erlang IDE
Plug 'vim-erlang/vim-erlang-compiler', { 'for': 'erlang' }
Plug 'vim-erlang/vim-erlang-tags', { 'for': 'erlang' }
Plug 'edkolev/erlang-motions.vim', { 'for': 'erlang' }

call plug#end()

" Standard stuff.
filetype plugin indent on
syntax on

" Always use Unicode
set encoding=utf-8
setglobal fileencoding=utf-8

" Ensure that text is properly wrapped in comment; joining commented
" lines concatenates the comments properly; and preexisting long lines are
" never automatically wrapped.
" See `:help fo-table` for more info on these options
set formatoptions+=cl2j

" Show the current normal mode command sequence in the corner of the screen.
set showcmd

" Enable true-colour mode in iTerm and Windows 10 terminal
if $TERM_PROGRAM == 'iTerm.app' || has('vcon')
  set termguicolors
endif

" Use my awesome colorscheme for 256 colors and GVim or whatever.
if &t_Co >= 256 || has("gui_running")
  set background=dark
  silent! colorscheme kuroi
endif

" The default, but can use <Space> as an alias.
" See .vim/plugin/maps.vim for more details.
let mapleader="\\"

" I guess I don't like folds?
set nofoldenable

" Jump to the last position when reopening a file.
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Wrapping junk:
set linebreak
set nowrap " Really hate wrapping.
set showbreak=»»»»
set wrapmargin=1 " We'll put a special character to signify long lines.
set listchars=tab:⇥·,trail:␣,eol:¶,extends:⇉,precedes:⇇,nbsp:·

" Searching stuff
set ignorecase
set smartcase
set hlsearch

" Visual bell, as opposed to annoying beeping
set visualbell

" Show a sweet title.
set title
set titleold=""

" Modeline stuff
set modeline
set modelines=5
