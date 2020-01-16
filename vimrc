set isfname+=\{,\}

if &compatible
  set nocompatible               " Be iMproved
endif

source $HOME/.vim/dein.vim
source $HOME/.vim/general.vim

" syntax
autocmd BufEnter *.thtml,*.ctp set syntax=php
autocmd BufEnter *.js.ctp set syntax=javascript
autocmd BufEnter *.eco set filetype=eco

au BufRead,BufNewFile {Gemfile,Rakefile,Thorfile,config.ru,Guardfile,*.rb} set ft=ruby
au BufRead,BufNewFile {*.yml} set ft=yaml

" make use real tabs
au FileType make set noexpandtab
au FileType help set noexpandtab
au FileType help set softtabstop=8

" define quotes used by latex suite
let b:Tex_SmartQuoteOpen = '"`'
let b:Tex_SmartQuoteClose = "\"'"

" mappings
map <leader>a :A<cr>

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

"convenience
noremap <leader><cr> :nohlsearch<cr>

" markdown
noremap <leader>m :QuickRun markdown<cr>


let g:neocomplete#enable_at_startup = 1

" FUGITIVE commands
command! Gci Gcommit --verbose
command! Gds Git diff --staged
command! Gca Gcommit --amend

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
let g:tex_conceal=""

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

let g:quickrun_config = {
\   'markdown': {
\     'type': 'markdown/gfm',
\     'outputter': 'browser'
\   }
\ }

hi diffRemoved ctermfg=magenta cterm=bold
hi diffAdded ctermfg=darkgreen cterm=bold

" vim-json
let g:vim_json_comments=1

let g:tern_request_timeout = 1
let g:tern_show_signature_in_pnum = '0'

let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

let g:UltiSnipsSnippetDirectories=["UltiSnips"]

" prettier
let g:prettier#config#single_quote = 'false'
let g:prettier#config#print_width = 100
let g:prettier#config#trailing_comma = 'none'
let g:prettier#config#bracket_spacing = 'true'

command -nargs=* Ng e term://ng <args>
command -nargs=* -complete=custom,ListNgServeOpts NgServe e term://ng serve <args>
command -nargs=+ -complete=custom,ListNgGenerateCommands NgGenerate e term://ng generate <args>

fun ListNgServeOpts(ArgLead, CmdLine, CursorPos)
  return "--port "
endfun

fun ListNgGenerateCommands(ArgLead, CmdLine, CursorPos)
  return system('ng help generate | grep "[a-z]\+ <name" | sed -e "s/^[ \t]*//" | cut -f 1 -d " "')
endfun

runtime! vimrc.d/*.vim
runtime! vimrc.local.d/*.vim
