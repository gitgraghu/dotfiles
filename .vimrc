set nocompatible    "use vim, not vi api
filetype off
set rtp+=$HOME/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/The-NERD-tree'
Bundle 'Rip-Rip/clang_complete'
Bundle 'tomasr/molokai'
Bundle 'rstacruz/sparkup'
Bundle 'vim-scripts/tComment'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'

filetype indent on  "turn indentation on
filetype plugin on  "enable filetype plugins

" Set extra options when running in GUI mode
set guioptions-=T
set guioptions+=e
set t_Co=256
set guitablabel=%M\ %t


syntax on
set background=dark
colorscheme molokai

set noswapfile      "no swap file
set history=100     "command history
set ruler           "always show cursor
set showcmd         "show incomplete commands
set shiftwidth=4
set softtabstop=4
set tabstop=4		"number of visual spaces per TAB
set expandtab		"tabs are spaces
set encoding=utf-8
set showmode
set showcmd
set lazyredraw
set number		    "show line numbers
set cursorline		"highlight current line
set backspace=indent,eol,start
set relativenumber
set wildmenu		"visual autocomplete for command menu
set showmatch		"highlight matching parenthesis
set incsearch		"search as characters are entered
set hlsearch		"highlight matches
set autoindent		"new line gets indent of previous line
set nowrap          "do not wrap lines
set smartcase       "ignore case while searching
set ignorecase      "ignore case while searching
set scrolloff=10    "scroll with more context
set statusline=%f\ %=L:%l/%L\ %c\ (%p%%) "show some useful info in status line
set autoread        "autoload files that have changed outside of vim
set paste

" move by screen lines, not by real lines
nnoremap j gj
nnoremap k gk
" also in visual mode
vnoremap j gj
vnoremap k gk

"Fix vim regex behaviour
nnoremap / /\v
vnoremap / /\v

inoremap ;; <ESC>

nnoremap <leader>s :vsplit<CR>
nnoremap <leader>hs :split<CR>

" TComment remap
map <leader>c <C-_><C-_>

map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

"Let CtrlP show hidden files
let g:ctrlp_show_hidden=1
" don't let ctrlp take over the screen!
let g:ctrlp_max_height=30
" lets make sure we don't show these files
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*.,*/.DS_Store
