if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state(expand('~/.vim/dein/'))
  call dein#begin(expand('~/.vim/dein'))

  " Let dein manage dein
  " Required:
  call dein#add(expand('~/.vim/dein/repos/github.com/Shougo/dein.vim'))

  source $HOME/.vim/bundlerc.vim

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
 call dein#install()
endif

"End dein Scripts-------------------------

" source $HOME/.vim/bundlerc.vim
"
set grepprg="grep -nH $*"

let mapleader=","
let maplocalleader=','

" basic
set number
set ruler
set lbr
set laststatus=2
set hidden
set modeline
" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set foldmethod=indent
set foldcolumn=2

" tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:→\ ,trail:·

" search
set incsearch
set hlsearch
set ignorecase
set smartcase

" split
set splitright

set showcmd

" command-t
set wildignore+=*.zip,*.gz,*.bz2,*.xz,*.class
let g:ctrlp_custom_ignore = '\v[\/](\.(git|hg|svn)|(vendor\/ruby|tmp|log|node_modules|bower_components))$'

" syntax
autocmd BufEnter *.thtml,*.ctp set syntax=php
autocmd BufEnter *.js.ctp set syntax=javascript
autocmd BufEnter *.eco set filetype=eco

au BufRead,BufNewFile {Gemfile,Rakefile,Thorfile,config.ru,Guardfile,*.rb} set ft=ruby
au BufRead,BufNewFile {*.yml} set ft=yaml

" make and python use real tabs
au FileType make set noexpandtab
au FileType help set noexpandtab
au FileType help set softtabstop=8

" define quotes used by latex suite
let b:Tex_SmartQuoteOpen = '"`'
let b:Tex_SmartQuoteClose = "\"'"

" mappings
nmap <Tab> :bn<CR>
map <S-Tab> :bp<CR>
nmap n nzz
nmap N Nzz

noremap <c-o> :!open %<cr>

noremap <C-c> :BD<CR>

noremap <leader>c :CoffeeCompile vert<CR>

map <leader>a :A<cr>

noremap <leader>r :!bundle exec rspec %<cr>
nmap <leader>R :!bundle exec rspec spec<CR>

map <leader>f <Plug>(ale_fix)

nnoremap <leader>y "+yy
vnoremap <leader>y "+y

if has('nvim')
  tnoremap <C-space> <C-\><C-N>
  tnoremap <space><space> <C-\><C-N>
  tnoremap <C-h> <C-\><C-N><C-w>h
  tnoremap <C-j> <C-\><C-N><C-w>j
  tnoremap <C-k> <C-\><C-N><C-w>k
  tnoremap <C-l> <C-\><C-N><C-w>l
  inoremap <C-h> <C-\><C-N><C-w>h
  inoremap <C-j> <C-\><C-N><C-w>j
  inoremap <C-k> <C-\><C-N><C-w>k
  inoremap <C-l> <C-\><C-N><C-w>l
  nnoremap <C-h> <C-w>h
  nnoremap <C-j> <C-w>j
  nnoremap <C-k> <C-w>k
  nnoremap <C-l> <C-w>l

  nnoremap <c-t> :terminal<cr>
endif

" Tabularize

vmap <leader>tab        :Tabularize /
vmap <leader>tab=       :Tabularize /=<cr>
vmap <leader>tab&       :Tabularize /&<cr>
vmap <leader>tab.       :Tabularize /.<cr>
vmap <leader>tab:       :Tabularize /:<cr>
vmap <leader>tab,       :Tabularize /,<cr>
vmap <leader>tab;       :Tabularize /;<cr>

" Buffers and files
nnoremap gb :ls<cr>:b
nnoremap gbd :ls<cr>:bd
nnoremap gbs :Denite buffer<cr>
nnoremap <c-b> :Denite buffer<cr>
nnoremap <c-p> :Denite buffer file_rec<cr>
nnoremap gf :Denite file_rec<cr>
nnoremap gfb :Denite buffer file_rec<cr>

nnoremap gs :split 
nnoremap gsv :vsplit 
nnoremap gs<cr> :split<cr>
nnoremap gsv<cr> :vsplit<cr>

" show highlighting group under cursor when pressing F10
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

"convenience
noremap <leader><cr> :nohlsearch<cr>

" markdown
noremap <leader>m :QuickRun markdown<cr>

set mouse=a
set backup
set undofile                "so is persistent undo ...
set undolevels=1000         "maximum number of changes that can be undone
set undoreload=10000        "maximum number lines to save for undo on a buffer reload

if has('nvim')
  set undodir=$HOME/.nvim/undo//
  set backupdir=$HOME/.nvim/backup//
  set directory=$HOME/.nvim/swap//
  set viewdir=$HOME/.nvim/views//

  silent execute '!mkdir -p $HOME/.nvim/backup'
  silent execute '!mkdir -p $HOME/.nvim/swap'
  silent execute '!mkdir -p $HOME/.nvim/views'
  silent execute '!mkdir -p $HOME/.nvim/undo'
else
  set undodir=$HOME/.vim/undo//
  set backupdir=$HOME/.vim/backup//
  set directory=$HOME/.vim/swap//
  set viewdir=$HOME/.vim/views//

  silent execute '!mkdir -p $HOME/.vim/backup'
  silent execute '!mkdir -p $HOME/.vim/swap'
  silent execute '!mkdir -p $HOME/.vim/views'
  silent execute '!mkdir -p $HOME/.vim/undo'
endif

au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

let g:neocomplete#enable_at_startup = 1

" FUGITIVE commands
command! Gci Gcommit --verbose
command! Gds Git diff --staged
command! Gca Gcommit --amend

map <leader>' :s/'/"/g 100000<cr>
" END VIM RSPEC & CUCUMBER

" For snippet_complete marker.
if has('conceal')
  set conceallevel=1 concealcursor=i
endif

let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" rainbow paranthesis
let g:rainbow_active = 1

let g:rainbow_conf = {
\   'ctermfgs': ['darkblue', 'darkyellow', 'darkcyan', 'darkmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'handlebars': 0,
\       'html.handlebars': 0,
\       'html': 0,
\       'css': 0,
\   }
\}


" clojure
nmap cx :Eval<cr>

" text editing
au BufEnter *.md,*.markdown,*.txt,*.tex,*.latex set textwidth=100
au BufEnter *.md,*.markdown,*.txt set spelllang=en
au BufEnter *.tex,*.latex set spelllang=de
au BufEnter *.md,*.markdown,*.txt,*.tex,*.latex set spell

" gradle == groovy
au BufEnter *.gradle set ft=groovy

" enable conceal in normal and command mode
set concealcursor=nc
set conceallevel=1
let g:tex_conceal=""

" emmet-vim mapping
nmap <leader>h <c-y>,
imap <c-z>, <c-y>,

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" disable parent dir search for rope
let g:pymode_rope_lookup_project = 0

" pymode python
"let g:pymode_python = 'python3'
let g:python_host_prog=expand('~/.pyenv/neovim/bin/python')
let g:python3_host_prog=expand('~/.pyenv/neovim3/bin/python')

au Syntax gitcommit set foldmethod=manual
au Syntax gitcommit set spell
au Syntax gitcommit set spelllang=en
au Syntax gitcommit set colorcolumn=72
au FileType agit_diff set foldmethod=diff

let g:quickrun_config = {
\   'markdown': {
\     'type': 'markdown/gfm',
\     'outputter': 'browser'
\   }
\ }

let g:airline_powerline_fonts = 1
let g:airline#extensions#bufferline#overwrite_variables = 0
let g:airline#extensions#tmuxline#enabled = 0
let g:bufferline_rotate = 1
let g:bufferline_fixed_index = -1
let g:bufferline_active_buffer_left = '['
let g:bufferline_active_buffer_right = ']'
let g:bufferline_modified = '+'
let g:bufferline_show_bufnr = 1
let g:bufferline_echo = 0
let g:airline#extensions#branch#displayed_head_limit = 25
let g:airline#extensions#branch#format = 2
let g:airline_skip_empty_sections = 1

let g:airline#extensions#default#section_truncate_width = {
  \ 'b': 120,
  \ 'x': 100,
  \ 'y': 100,
  \ 'z': 45,
  \ 'warning': 79,
  \ }

" syntastic
let g:syntastic_coffee_checkers = ['coffee', 'coffeelint']
let g:syntastic_javascript_checkers = ['jshint', 'eslint']
let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_javscript_eslint_exec = '/Users/ohcibi/.nvm/versions/node/v0.12.7/bin/eslint'

function! RemoveC()
  let r = confirm('Really Remove?', "&OK\n&Cancel")
  if r == 1
    execute "Remove"
  endif
endfunction

map gr :call RemoveC()<cr>

hi diffRemoved ctermfg=magenta cterm=bold
hi diffAdded ctermfg=darkgreen cterm=bold
set wildmenu

set colorcolumn=100

call denite#custom#var('file_rec', 'command',
  \ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
call denite#custom#source('file_rec', 'matchers', ['matcher_cpsm', 'matcher_ignore_globs'])
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
      \ [ '*~', '*.o', '*.exe', '*.bak',
      \ '.DS_Store', '*.pyc', '*.sw[po]', '*.class',
      \ '.hg/', '.git/', '.bzr/', '.svn/',
      \ '.idea/', 'dist/',
      \ 'tags', 'tags-*'])
      "\ 'node_modules/', 'bower_components/', 'tmp/', 'log/', 'vendor/ruby',

" vim-json
let g:vim_json_comments=1

" deoplete
if has('nvim')
  let g:deoplete#enable_at_startup = 1
  let g:deoplete#enable_smart_case = 1

  if !exists('g:deoplete#omni_patterns')
    let g:deoplete#omni_patterns = {}
  endif
  let g:deoplete#omni_patterns.javascript = '[^. *\t](=|\.)?\w*'
  if !exists('g:deoplete#omni#functions')
    let g:deoplete#omni#functions = {}
  endif
  let g:deoplete#omni#functions.javascript = [
\   'tern#Complete'
\ ]

  let g:deoplete#sources = {}
  let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']

" #let g:deoplete#file#enable_buffer_path = 1

  set cot=longest,menuone,preview
endif

let g:tern_request_timeout = 1
let g:tern_show_signature_in_pnum = '0'

let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

set diffopt+=vertical

let g:UltiSnipsSnippetDirectories=["UltiSnips"]

" prettier
let g:prettier#config#single_quote = 'false'
let g:prettier#config#print_width = 100
let g:prettier#config#trailing_comma = 'none'
let g:prettier#config#bracket_spacing = 'true'

" terminal
if has('nvim')
    autocmd TermOpen * setlocal statusline=%{getcwd()}
    autocmd TermOpen * set relativenumber
    autocmd TermOpen * set foldcolumn=0
    autocmd TermOpen * set nospell

    nnoremap <leader>t :e term://
endif

command -nargs=* Ng e term://ng <args>
command -nargs=* -complete=custom,ListNgServeOpts NgServe e term://ng serve <args>
command -nargs=+ -complete=custom,ListNgGenerateCommands NgGenerate e term://ng generate <args>

fun ListNgServeOpts(ArgLead, CmdLine, CursorPos)
  return "--port "
endfun

fun ListNgGenerateCommands(ArgLead, CmdLine, CursorPos)
  return system('ng help generate | grep "[a-z]\+ <name" | sed -e "s/^[ \t]*//" | cut -f 1 -d " "')
endfun


set inccommand=nosplit

set guicursor=n-v-c-sm:block,i-ci-ve:ver25-blinkon100,r-cr-o:hor20


"set verbose=1
runtime! vimrc.d/*.vim
runtime! vimrc.local.d/*.vim
