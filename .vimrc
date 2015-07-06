set nocompatible        " Use vim and not vi

" Vundle Setup
filetype off
set rtp+=$HOME/.vim/bundle/vundle
call vundle#begin()

" Plugins
Plugin 'gmarik/vundle'
Plugin 'Yggdroot/indentLine'
Plugin 'tpope/vim-repeat'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/The-NERD-tree'
Plugin 'mattn/emmet-vim'
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/Gundo'
Plugin 'tpope/vim-fugitive'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-scripts/QuickBuf'
Plugin 'vim-scripts/tComment'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'
Plugin 'derekwyatt/vim-scala'
Plugin 'KabbAmine/vCoolor.vim'
Plugin 'klen/python-mode'
Plugin 'jceb/vim-orgmode'
Plugin 'davidhalter/jedi-vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'mileszs/ack.vim'
Plugin 'pangloss/vim-javascript'
" Plugin 'rstacruz/sparkup'
" Plugin 'vim-scripts/OmniCppComplete'
" Plugin 'mbbill/code_complete'
" Plugin 'ervandew/supertab'
call vundle#end()

syntax on               " Enable per file type syntax highlighting
filetype on             " File type detection on
filetype indent on      " Turn filetype specific indentation on
filetype plugin on      " Enable filetype plugins

set guioptions-=T       " Remove toolbar
set t_Co=256            " Set 256 color mode support
set background=dark     " Dark background
colorscheme molokai     " Set colorscheme
set gcr=a:blinkon0
set ttyfast

set noswapfile          " No swap file
set history=100         " Command history
set ruler               " Always show cursor
set laststatus=2        " Always show the status line
set showcmd             " Show incomplete commands
set showmode
set hidden              " No need to save on buffer switch

set shiftwidth=4
set softtabstop=4
set tabstop=4		    " Number of visual spaces per TAB
set expandtab		    " Tabs are spaces

set encoding=utf-8
set number		        " Show line numbers
set cursorline		    " Highlight current line
set nowrap              " Do not wrap lines
set mouse=a             " Show mouse cursor
set title

set backspace=indent,eol,start
set relativenumber
set wildmenu		    " Visual autocomplete for command menu
set wildignore+=*.o,*.pyc,*.bak,*.exe,*.jpg,*.jpeg,*.png,*.gif,*$py.class,*.class,*/*.dSYM/*,*.dylib
set wildmode=list:full
set showmatch		    " Highlight matching parenthesis

set incsearch		    " Search as characters are entered
set hlsearch		    " Highlight matches
set autoindent		    " New line gets indent of previous line
set smartcase           " Ignore case while searching
set ignorecase          " Ignore case while searching

set scrolloff=10        " Scroll with more context
set autoread            " Autoload files that have changed outside of vim
set pastetoggle=<F2>

set tags=/usr/include/tags
set tags+=./tags


inoremap jk <Esc>
inoremap kj <Esc>

let mapleader = ","
" Move by screen lines, not by real lines
nnoremap j gj
nnoremap k gk
" Also in visual mode
vnoremap j gj
vnoremap k gk

" ex mode commands made easy
nnoremap ; :

" Fix vim regex behaviour
nnoremap / /\v
vnoremap / /\v

" Shortcuts for splits
nnoremap <leader>s :vsplit<CR><C-w><C-w>
nnoremap <leader>hs :split<CR><C-w><C-w>

nnoremap <leader>x :bd<CR>
nnoremap <leader>q :q<CR>

" TComment remap
map <leader>/ <C-_><C-_>

" Tabs
set guitablabel=%M\ %t
map th :tabfirst<CR>
map tk :tabnext<CR>
map tj :tabprev<CR>
map tl :tablast<CR>
map tt :tabedit<Space>
map tn :tabnext<Space>
map tm :tabmove<Space>
map to :tabonly<cr>
map tc :tabclose<cr>
map <silent><C-N> :tabnew<CR>
map <silent><C-P> :tabp<CR>

map bh :bfirst<CR>
map bk :bnext<CR>
map bj :bprevious<CR>
map bl :blast<CR>
map bx :bdelete<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" inoremap <up> <nop>

nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$', '\.dSYM$']

" Ack on <leader>a
nnoremap <leader>a :Ack
nnoremap <leader>A :AckFromSearch<CR>
let g:ackprg = "/home/graghu/bin/ack -s -H --nocolor --nogroup --column"

" Gundo
nnoremap <leader>u :GundoToggle<CR>

let g:user_emmet_leader_key=','

" Messages, Info, & Status
set novisualbell            " No blinking
set noerrorbells            " No noise
set t_vb=
set cmdheight=2             " Cmd bar 2 rows high
set showcmd                 " Show partial command in the last line of the screen
set report=0                " : commands always print changed line count
set shortmess+=a            " Use [+]/[RO]/[w] for modified/readonly/written

let python_highlight_all = 1

let g:ctrlp_show_hidden=1   " Let CtrlP show hidden files
let g:ctrlp_max_height=30   " Don't let CtrlP take over the screen

" airline settings
let g:airline_powerline_fonts = 1
let g:airline_theme = 'badwolf'
let g:airline#extensions#tabline#enabled = 1

let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_no_include_search = 1
let g:syntastic_cpp_no_default_include_dirs = 1
let g:syntastic_cpp_auto_refresh_includes = 1

" lets make sure we don't show these files
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*.,*/.DS_Store

nnoremap <leader>ev <C-w><C-s><C-l>:e ~/.vimrc<CR>
" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

let g:pymode_rope = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_lookup_project = 0

let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

let g:pymode_lint = 1
let g:pymode_lint_checkers = ["pyflakes","pep8"]

let g:pymode_lint_write = 1
let g:pymode_virtualenv = 1

let g:pymode_breakpoint_key = '<leader>b'
let g:pymode_breakpoint = 1

let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

let g:pymode_folding = 0

let g:vim_markdown_folding_disabled=1

" CSS
" ---
autocmd FileType css setlocal expandtab shiftwidth=4 tabstop=4
autocmd FileType css setlocal commentstring=/*\ %s\ */
autocmd FileType css noremap <buffer> <leader>r :call CSSBeautify()<cr>

" Javascript
" ----------
autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal commentstring=//\ %s
autocmd FileType javascript noremap <buffer> <leader>r :call JsBeautify()<cr>
autocmd FileType javascript let b:javascript_fold = 0
let javascript_enable_domhtmlcss=1

" JSON
" ----
autocmd FileType json setlocal expandtab shiftwidth=2 tabstop=2
