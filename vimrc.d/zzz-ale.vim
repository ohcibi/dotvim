" ale
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '﹅'
let g:ale_fixers = {
      \ 'javascript': ['eslint'],
      \ 'typescript': ['tslint'],
      \ 'python': ['autopep8', 'yapf', 'isort']
      \ }
let g:ale_javascript_eslint_options = "--no-ignore"
let g:ale_typescript_tslint_options = "--no-ignore"
let g:ale_typescript_tslint_executable = "tslint --project tsconfig.json"
let g:ale_html_tidy_options = "-config .tidyrc"
hi ALEErrorSign ctermfg=darkred
hi ALEWarningSign ctermfg=darkyellow
