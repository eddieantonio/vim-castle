" .vimrc
" Author: Eddie Antonio Santos <easantos@ualberta.ca>
" See also: .vim/plugins and .vim/after/plugins

" Always use Unicode
set encoding=utf-8
setglobal fileencoding=utf-8

" Vundle first -- Relying on sensible.vim
call plug#begin('~/.vim/plugged')

" Colour schemes
Plug 'vim-scripts/desertEx'

" Languages
Plug 'veloce/vim-behat'
Plug 'kchmck/vim-coffee-script'
Plug 'chrisbra/csv.vim'
Plug 'neo4j-contrib/cypher-vim-syntax'
Plug 'elixir-lang/vim-elixir'
Plug 'jimenezrick/vimerl'
Plug 'fatih/vim-go'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'digitaltoad/vim-jade'
Plug 'dag/vim2hs'
Plug 'hail2u/vim-css3-syntax'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'jakar/vim-json'
Plug 'lervag/vimtex'
Plug 'groenewege/vim-less'
Plug 'justinmeza/lolcode.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'alunny/pegjs-vim'
Plug 'StanAngeloff/php.vim'
Plug 'rodjek/vim-puppet'
Plug 'niklasl/vim-rdf'
Plug 'derekwyatt/vim-sbt'
Plug 'derekwyatt/vim-scala'
Plug 'Omer/vim-sparql'
Plug 'evidens/vim-twig'
Plug 'wannesm/wmgraphviz.vim'

" Tim Pope awesomeness.
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-speeddating'

" Other.
Plug 'vim-scripts/a.vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'godlygeek/tabular'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'ervandew/supertab'
Plug 'scrooloose/syntastic'
Plug 'vim-scripts/taglist.vim'
Plug 'bling/vim-airline'
Plug 'tell-k/vim-autopep8'
Plug 'ap/vim-css-color'
Plug 'easymotion/vim-easymotion'
Plug 'tommcdo/vim-exchange'
Plug 'airblade/vim-gitgutter'
Plug 'michaeljsmith/vim-indent-object'
Plug 'antoyo/vim-licenses'
Plug 'xolox/vim-misc' | Plug 'xolox/vim-easytags'
Plug 'vim-pandoc/vim-pandoc'
Plug 'eddieantonio/vim-preserve'
Plug 'kshenoy/vim-signature'
Plug 'wakatime/vim-wakatime'

call plug#end()

" Standard stuff.
filetype plugin indent on
syntax on

" Ensure that text is properly wrapped in comment; joining commented
" lines concatenates the comments properly; and preexisting long lines are
" never automatically wrapped.
" See `:help fo-table` for more info on these options
set formatoptions+=cl2j

" Use my awesome colorscheme for 256 colors and GVim or whatever.
if &t_Co >= 256 || has("gui_running")
  colorscheme desertEx
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
