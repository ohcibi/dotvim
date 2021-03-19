let mapleader=","
let maplocalleader=','

set number
set ruler
set lbr
set laststatus=2
set hidden
set modeline
set title
set guicursor=n-v-c-sm:block,i-ci-ve:ver25-blinkon100,r-cr-o:hor20

set foldmethod=indent
set foldcolumn=2

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list

set showbreak=↪\
set listchars=tab:→\ ,trail:·,extends:⟩,precedes:⟨,conceal:_
set sidescroll=1
set nowrap
set splitright
set noea
set diffopt+=vertical
set inccommand=nosplit

set incsearch
set hlsearch
set ignorecase
set smartcase

set showcmd

set wildmenu
set wildignore+=*.zip,*.gz,*.bz2,*.xz,*.class

set backspace=indent,eol,start

set mouse=a
set backup
set backupdir-=.
set undofile                "so is persistent undo ...
set undolevels=1000         "maximum number of changes that can be undone
set undoreload=10000        "maximum number lines to save for undo on a buffer reload

au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

language en_US
