" .vimrc
" Author: Eddie Antonio Santos <easantos>
" See also: .vim/after/plugins

" Always use Unicode
set encoding=utf-8
setglobal fileencoding=utf-8


" Vundle first -- Relying on sensible.vim
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'

" Colour schemes
Plugin 'vim-scripts/desertEx'

" Tabular must go before some plugin...
Plugin 'godlygeek/tabular'

" Languages
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'kchmck/vim-coffee-script'
Plugin 'jimmyhchan/dustjs.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'jimenezrick/vimerl'
Plugin 'othree/html5.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'pangloss/vim-javascript'
Plugin 'jakar/vim-json'
Plugin 'groenewege/vim-less'
Plugin 'mintplant/vim-literate-coffeescript'
Plugin 'alunny/pegjs-vim'
Plugin 'rodjek/vim-puppet'
Plugin 'derekwyatt/vim-sbt'
Plugin 'derekwyatt/vim-scala'
Plugin 'wavded/vim-stylus'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'wannesm/wmgraphviz.vim'
Plugin 'justinmeza/lolcode.vim'
Plugin 'vim-pandoc/vim-pandoc-syntax'

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
Plugin 'ap/vim-css-color'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
"Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'eddieantonio/vim-preserve'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/taglist.vim'
Plugin 'wakatime/vim-wakatime'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tommcdo/vim-exchange'
Plugin 'vim-pandoc/vim-pandoc'

" TODO: Move all of this configuration to after/plugin!

" Ensure that text is properly wrapped in comment; joining commented
" lines concatenates the comments properly; and preexisting long lines are
" never automatically wrapped.
" See `:help fo-table` for more info on these options
set formatoptions+=cl2j

"
" Syntastic

" Disable pylint -- Will use Dispatch to lint instead.
let g:syntastic_python_checkers=['python']

" Don't check for Scala.
let g:syntastic_scala_checkers=[]

" Use clang -fsyntax-only
let g:syntastic_cpp_compiler = 'c++'
let g:syntastic_cpp_compiler_options="-fsyntax-only -std=c++0x"

" Why wouldn't you enable this in header files?
let g:syntastic_c_check_header = 1
let g:syntastic_cpp_check_header = 1

" Disable Markdown folding
let g:vim_markdown_folding_disabled=1

" Easy Motion config.
let g:EasyMotion_smartcase = 1


" Standard stuff.
syntax on
filetype plugin indent on

" Use my awesome colorscheme for 256 colors and GVim or whatever.
if &t_Co >= 256 || has("gui_running")
  colorscheme desertEx
endif

" The default, but can use <space> as an alias.
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

" SuperTab configuration.
let g:SuperTabDefaultCompletionType = 'context'
" Override 'insert previously insterted text and stop' for SuperTab
if !has("gui_running")
    imap <C-@> <C-Space>
endif

" Apparently I like Eclipse...
let g:SuperTabMappingForward = '<C-Space>'
let g:SuperTabClosePreviewOnPopupClose = 1


