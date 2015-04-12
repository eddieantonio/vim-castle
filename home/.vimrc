" .vimrc
" Author: Eddie Antonio Santos <easantos@ualberta.ca>
" See also: .vim/plugins and .vim/after/plugins

" Always use Unicode
set encoding=utf-8
setglobal fileencoding=utf-8

" Vundle first -- Relying on sensible.vim
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'

" Colour schemes
Plugin 'vim-scripts/desertEx'

" First, some dependencies...
" Tabular must go before some plugin...
Plugin 'godlygeek/tabular'
" vim-misc must go before vim-easytags
Plugin 'xolox/vim-misc'

" Languages
Plugin 'kchmck/vim-coffee-script'
Plugin 'jimmyhchan/dustjs.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'jimenezrick/vimerl'
Plugin 'fatih/vim-go'
Plugin 'othree/html5.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'pangloss/vim-javascript'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'jakar/vim-json'
Plugin 'groenewege/vim-less'
Plugin 'mintplant/vim-literate-coffeescript'
Plugin 'justinmeza/lolcode.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'alunny/pegjs-vim'
Plugin 'dopefishh/vim-praat'
Plugin 'rodjek/vim-puppet'
Plugin 'derekwyatt/vim-sbt'
Plugin 'derekwyatt/vim-scala'
Plugin 'wavded/vim-stylus'
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

" Other.
Plugin 'vim-scripts/a.vim'
Plugin 'tell-k/vim-autopep8'
Plugin 'ap/vim-css-color'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'xolox/vim-easytags'
Plugin 'tommcdo/vim-exchange'
Plugin 'airblade/vim-gitgutter'
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

" Standard stuff.
syntax on
filetype plugin indent on

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

" Use OmniComplete
set omnifunc=syntaxcomplete
