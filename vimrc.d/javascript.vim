hi jsDot gui=bold
hi jsClassBraces guifg=#770000 gui=bold
hi jsStorageClass guifg=#c84349 gui=bold

hi link jsObjectKey Label
hi link jsObjectBraces jsDot
hi link jsModuleBraces jsObjectBraces
hi link jsFuncBraces jsObjectBraces
hi link jsFuncParens jsObjectBraces
hi link jsParensDecorator jsObjectBraces
hi link jsParens jsObjectBraces

augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_return               = "﬌"
let g:javascript_conceal_arrow_function       = ""

" tern

let g:tern_request_timeout = 1
let g:tern_show_signature_in_pnum = '0'

let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]
