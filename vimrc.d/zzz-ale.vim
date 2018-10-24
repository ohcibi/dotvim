" ale
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '﹅'
let g:ale_fixers = {
      \ 'javascript': ['eslint'],
      \ 'typescript': ['tsserver'],
      \ 'python': ['autopep8', 'yapf', 'isort']
      \ }
let g:ale_javascript_eslint_options = "--no-ignore"
let g:ale_typescript_tslint_options = "--no-ignore"
let g:ale_typescript_tslint_executable = "tslint --project tsconfig.json"
let g:ale_html_tidy_options = "-config .tidyrc"
let g:ale_python_pylint_options = "--rcfile=.pylintrc"
let g:ale_python_pylint_change_directory=0
hi ALEErrorSign ctermfg=darkred guifg=#990000
hi ALEWarningSign ctermfg=darkyellow guifg=#999944
hi ALEErrorLine cterm=undercurl,italic gui=undercurl,italic guibg=#ffdddd
hi ALEWarningLine cterm=italic gui=italic guibg=#ffffee

au FileType javascript let b:ale_linters_ignore = ['tsserver']
au FileType typescript let b:ale_linters = ['tsserver', 'prettier']
