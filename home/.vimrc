" .vimrc
" Author: Eddie Antonio Santos <easantos@ualberta.ca>
" See also: .vim/plugins and .vim/after/plugins

" Always use Unicode
set encoding=utf-8
setglobal fileencoding=utf-8

" Vundle first -- Relying on sensible.vim
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Colour schemes
Plugin 'vim-scripts/desertEx'

" First, some dependencies...
" Tabular must go before some plugin...
Plugin 'godlygeek/tabular'
" vim-misc must go before vim-easytags
Plugin 'xolox/vim-misc'

" Languages
Plugin 'veloce/vim-behat'
Plugin 'kchmck/vim-coffee-script'
Plugin 'chrisbra/csv.vim'
Plugin 'neo4j-contrib/cypher-vim-syntax'
Plugin 'elixir-lang/vim-elixir'
Plugin 'jimenezrick/vimerl'
Plugin 'fatih/vim-go'
Plugin 'othree/html5.vim'
" My fork with proper ECMASCript 2015 highlighting.
Plugin 'file:///Users/eddieantonio/Projects/Forks/vim-javascript'
" TODO: When ECMASCript 2015 features end up in master,
" use master, or a tagged commit.
"Plugin 'pangloss/vim-javascript@develop'
Plugin 'mxw/vim-jsx'
Plugin 'digitaltoad/vim-jade'
Plugin 'dag/vim2hs'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'jakar/vim-json'
Plugin 'groenewege/vim-less'
Plugin 'justinmeza/lolcode.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'alunny/pegjs-vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'rodjek/vim-puppet'
Plugin 'niklasl/vim-rdf'
Plugin 'derekwyatt/vim-sbt'
Plugin 'derekwyatt/vim-scala'
Plugin 'Omer/vim-sparql'
Plugin 'evidens/vim-twig'
Plugin 'wannesm/wmgraphviz.vim'

" Tim Pope awesomeness.
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-speeddating'

" Other.
Plugin 'vim-scripts/a.vim'
Plugin 'bling/vim-airline'
Plugin 'tell-k/vim-autopep8'
Plugin 'ap/vim-css-color'
Plugin 'kien/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'xolox/vim-easytags'
Plugin 'tommcdo/vim-exchange'
Plugin 'airblade/vim-gitgutter'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'eddieantonio/vim-preserve'
Plugin 'kshenoy/vim-signature'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/taglist.vim'
Plugin 'wakatime/vim-wakatime'

call vundle#end()

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
