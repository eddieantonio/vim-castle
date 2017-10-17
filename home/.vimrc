" .vimrc
" Author: Eddie Antonio Santos <easantos@ualberta.ca>
" See also: .vim/plugins and .vim/after/plugins

" Always use Unicode
set encoding=utf-8
setglobal fileencoding=utf-8

" vim-plug first -- Relying on sensible.vim
call plug#begin('~/.vim/plugged')

" Colour schemes
Plug 'junegunn/seoul256.vim'

" Languages
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' } | Plug 'mxw/vim-jsx'
Plug 'dag/vim2hs', { 'for': 'haskell' }
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'jakar/vim-json', { 'for': 'json' }
Plug 'lervag/vimtex', { 'for': ['tex', 'latex'] }
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'rodjek/vim-puppet', { 'for': 'puppet' }
Plug 'Omer/vim-sparql', { 'for': 'sparql' }
Plug 'wannesm/wmgraphviz.vim', { 'for': 'dot'}
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'Quramy/vim-js-pretty-template', { 'for': ['javascript', 'typescript'] }
Plug 'dylon/vim-antlr', { 'for': ['antlr4'] }
Plug 'alunny/pegjs-vim', { 'for': ['pegjs'] }
Plug 'maxbane/vim-asm_ca65', { 'for': 'asm_ca65' }

" Tim Pope awesomeness.
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-dispatch', { 'on': 'Make' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-speeddating'

" Python IDE
Plug 'tell-k/vim-autopep8', { 'for': 'python' }
Plug 'hynek/vim-python-pep8-indent', { 'for': ['python'] }

" Erlang IDE
Plug 'vim-erlang/vim-erlang-compiler', { 'for': 'erlang' }
Plug 'vim-erlang/vim-erlang-omnicomplete', { 'for': 'erlang' }
Plug 'vim-erlang/vim-erlang-tags', { 'for': 'erlang' }
Plug 'edkolev/erlang-motions.vim', { 'for': 'erlang' }

" TypeScript IDE
Plug 'Shougo/vimproc.vim'  |
  \ Plug 'Quramy/tsuquyomi', { 'for': 'typescript', 'do': 'vim +VimProcInstall' }

" Other.
Plug 'vim-scripts/a.vim', { 'for': ['c', 'cpp'] }
Plug 'kien/ctrlp.vim' " Time to upgrade?
Plug 'scrooloose/nerdcommenter'
Plug 'rstacruz/sparkup', { 'rtp': 'vim/' }
Plug 'godlygeek/tabular'
Plug 'AndrewRadev/splitjoin.vim'

Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'ap/vim-css-color', { 'for': ['css', 'less', 'html'] }
Plug 'easymotion/vim-easymotion'
Plug 'tommcdo/vim-exchange'
Plug 'michaeljsmith/vim-indent-object'
Plug 'antoyo/vim-licenses'
Plug 'xolox/vim-misc' | Plug 'xolox/vim-easytags'
Plug 'vim-pandoc/vim-pandoc'
Plug 'eddieantonio/vim-preserve'
Plug 'kshenoy/vim-signature'
Plug 'wakatime/vim-wakatime'
Plug 'chrisbra/unicode.vim'

call plug#end()

" Standard stuff.
filetype plugin indent on
syntax on

" Ensure that text is properly wrapped in comment; joining commented
" lines concatenates the comments properly; and preexisting long lines are
" never automatically wrapped.
" See `:help fo-table` for more info on these options
set formatoptions+=cl2j

set showcmd

" Use my awesome colorscheme for 256 colors and GVim or whatever.
if &t_Co >= 256 || has("gui_running")
  "colorscheme desertEx
  " seoul256 (dark):
  "   Range:   233 (darkest) ~ 239 (lightest)
  "   Default: 237
  let g:seoul256_background = 235
  colorscheme seoul256
endif

" The default, but can use <Space> as an alias.
" See .vim/plugin/maps.vim for more details.
let mapleader="\\"

" Enable the dang mouse!
if has('mouse')
  set mouse=a
endif

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
set wrapmargin=1 " We'll put a special UTF-8 character to signify long lines.
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
