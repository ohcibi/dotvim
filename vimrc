set isfname+=\{,\}

if &compatible
  set nocompatible               " Be iMproved
endif

source $HOME/.vim/dein.vim
source $HOME/.vim/general.vim

" Remote plugin hosts
let g:python_host_prog=expand('~/.venv/neovim/bin/python')
let g:python3_host_prog=expand('~/.venv/neovim3/bin/python')
let g:node_host_prog=expand('~/.volta/tools/image/packages/neovim/4.8.0/bin/cli.js')

" make use real tabs
au FileType make set noexpandtab
au FileType help set noexpandtab
au FileType help set softtabstop=8

nnoremap <leader>y "+yy
vnoremap <leader>y "+y

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap gs :split 
nnoremap gsv :vsplit 
nnoremap gs<cr> :split\|Dirvish %<cr>
nnoremap gsv<cr> :vsplit\|Dirvish %<cr>

" show highlighting group under cursor when pressing F10
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

noremap <leader><cr> :nohlsearch<cr>

" FUGITIVE commands
command! Gci Gcommit --verbose
command! Gds Git diff --staged
command! Gca Gcommit --amend

" For snippet_complete marker.
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" text editing
au BufEnter *.md,*.markdown,*.txt,*.tex,*.latex set textwidth=100
au BufEnter *.md,*.markdown,*.txt set spelllang=en
au BufEnter *.tex,*.latex set spelllang=de
au BufEnter *.md,*.markdown,*.txt,*.tex,*.latex set spell

set spell
au FileType gitrebase set nospell

" gradle == groovy
au BufEnter *.gradle set ft=groovy

" enable conceal in normal and command mode
set concealcursor=nc
set conceallevel=1

" emmet-vim mapping
nmap <leader>h <c-y>,
imap <c-z>, <c-y>,

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

au FileType gitcommit setlocal spell
au FileType gitcommit setlocal spelllang=en
au FileType gitcommit setlocal colorcolumn=72
au FileType gitcommit setlocal foldmethod=diff

hi diffRemoved ctermfg=magenta cterm=bold
hi diffAdded ctermfg=darkgreen cterm=bold

let g:UltiSnipsSnippetDirectories=["UltiSnips"]

runtime! vimrc.d/*.vim
runtime! vimrc.local.d/*.vim
