set nocompatible

" Load pathogen
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" Change <leader> to ,
let mapleader=","

" Edit/reload vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set hidden

set nowrap
set tabstop=4
set backspace=indent,eol,start
set autoindent
set copyindent
set number
set shiftwidth=4
set shiftround
set showmatch
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch

set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.o
set title
set visualbell
set noerrorbells

set backup
set nowritebackup
set backupcopy=yes
set backupdir=$HOME/.vimbackup
set directory=$HOME/.vimswap,./

filetype plugin indent on
autocmd filetype python set expandtab

syntax on

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
autocmd filetype html,xml set listchars-=tab:>.

if &filetype == ''
	set nolist
endif

set pastetoggle=<F2>

set mouse=a

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

cmap w!! w !sudo tee % >/dev/null

