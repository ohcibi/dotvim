" ale
let g:ale_linters_explicit = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '﹅'
let g:ale_fixers = {
      \ 'html': ['tidy', 'prettier', 'remove_trailing_lines', 'trim_whitespace'],
      \ 'javascript': ['eslint', 'remove_trailing_lines', 'trim_whitespace'],
      \ 'python': ['autopep8', 'yapf', 'isort', 'remove_trailing_lines', 'trim_whitespace']
      \ }
let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \ 'handlebars': ['ember-template-lint']
      \ }
let g:ale_javascript_eslint_options = "--no-ignore"
let g:ale_typescript_tslint_options = "--no-ignore"
let g:ale_typescript_tslint_executable = "tslint --project tsconfig.json"
let g:ale_typescript_prettier_options = "--require-pragma false"
let g:ale_html_tidy_options = "-config .tidyrc"
let g:ale_python_pylint_options = "--rcfile=.pylintrc"
let g:ale_python_pylint_change_directory=0

let g:ale_virtualtext_cursor = 1
let g:ale_virtualtext_prefix = '✘ '

au FileType typescript let b:ale_linters = ['eslint', 'tsserver', 'tslint']
au FileType javascript let b:ale_linters_ignore = ['tsserver']
au FileType javascript let b:ale_linters = ['eslint']
au FileType html,html.handlebars let b:ale_linters = ['embertemplatelint', 'write-good', 'prettier', 'alex']

au FileType ale-preview set wrap

hi ALEErrorSign ctermfg=darkred guifg=#990000
hi ALEWarningSign ctermfg=darkyellow guifg=#999944
hi ALEErrorLine cterm=undercurl,italic gui=undercurl,italic guibg=#ffdddd
hi ALEWarningLine cterm=italic gui=italic guibg=#ffffee

map <leader>f <Plug>(ale_fix)

if executable('typescript-language-server')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'typescript-language-server',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
        \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'tsconfig.json'))},
        \ 'whitelist': ['typescript', 'typescript.tsx'],
        \ })
endif
