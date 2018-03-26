let g:UltiSnipsUsePythonVersion=3
"let g:UltiSnipsExpandTrigger='<c-i>j'
"let g:UltiSnipsJumpForwardTrigger='<c-i>j'
"let g:UltiSnipsJumpBackwardTrigger='<c-i>k'
inoremap <expr><TAB> pumvisible() ? "\<c-n>" : "\<TAB>"

autocmd BufRead,BufNewFile,BufEnter *.hbs UltiSnipsAddFiletypes handlebars.html
