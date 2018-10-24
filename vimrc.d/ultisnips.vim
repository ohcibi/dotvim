let g:UltiSnipsUsePythonVersion=3
inoremap <expr><TAB> pumvisible() ? "\<c-n>" : "\<TAB>"

autocmd BufRead,BufNewFile,BufEnter *.hbs UltiSnipsAddFiletypes handlebars.html
