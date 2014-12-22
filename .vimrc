set nocompatible        " Use vim and not vi

" Vundle Setup
filetype off
set rtp+=$HOME/.vim/bundle/vundle
call vundle#begin()

" Plugins
Plugin 'gmarik/vundle'
Plugin 'Yggdroot/indentLine'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/The-NERD-tree'
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'rstacruz/sparkup'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/Gundo'
Plugin 'tpope/vim-fugitive'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'godlygeek/tabular'
Plugin 'Raimondi/delimitMate'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'vim-scripts/tComment'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'


" Plugin 'vim-scripts/OmniCppComplete'
" Plugin 'mbbill/code_complete'
" Plugin 'ervandew/supertab'
" Plugin 'rstacruz/sparkup'
" Plugin 'davidhalter/jedi-vim'

call vundle#end()

syntax on               " Enable per file type syntax highlighting
filetype on             " File type detection on
filetype indent on      " Turn filetype specific indentation on
filetype plugin on      " Enable filetype plugins

set guioptions-=T       " Remove toolbar
set t_Co=256            " Set 256 color mode support
set background=dark     " Dark background
colorscheme molokai     " Set colorscheme

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

set backspace=indent,eol,start
set relativenumber
set wildmenu		    " Visual autocomplete for command menu
set showmatch		    " Highlight matching parenthesis

set incsearch		    " Search as characters are entered
set hlsearch		    " Highlight matches
set autoindent		    " New line gets indent of previous line
set smartcase           " Ignore case while searching
set ignorecase          " Ignore case while searching

set scrolloff=10        " Scroll with more context
set autoread            " Autoload files that have changed outside of vim
" set paste

set tags=/usr/include/tags
set tags+=./tags

let mapleader = ","
" Move by screen lines, not by real lines
nnoremap j gj
nnoremap k gk
" Also in visual mode
vnoremap j gj
vnoremap k gk

" Fix vim regex behaviour
nnoremap / /\v
vnoremap / /\v

" Shortcuts for splits
nnoremap <leader>s :vsplit<CR>
nnoremap <leader>hs :split<CR>

nnoremap <leader>x :bd<CR>

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

" Messages, Info, & Status
set novisualbell            " No blinking
set noerrorbells            " No noise
set t_vb=
set cmdheight=2             " Cmd bar 2 rows high
set showcmd                 " Show partial command in the last line of the screen
set report=0                " : commands always print changed line count
set shortmess+=a            " Use [+]/[RO]/[w] for modified/readonly/written

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
