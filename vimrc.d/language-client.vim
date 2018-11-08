nnoremap <silent> <leader>l :call LanguageClient_contextMenu()<cr>
nnoremap <silent> <f6> :call LanguageClient#textDocument_rename()<cr>
nnoremap <silent> <leader>d :call LanguageClient#textDocument_definition()<cr>
nnoremap <silent> <leader>D :call LanguageClient#textDocument_references()<cr>
nnoremap <silent> <leader>? :call LanguageClient#textDocument_hover()<cr>
