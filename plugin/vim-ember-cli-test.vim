function! OpenQUnit(params)
  if !exists("g:ember_cli_test_url")
    let g:ember_cli_test_url = "http://localhost:7357/tests/index.html?filter="
  endif

  let url = g:ember_cli_test_url . tolower(a:params)
  let url = shellescape(url, 1)
  silent! exec "silent! !open " . url | redraw!
endfunction

function! RunQunitFile()
  let l:line_number = search('^\s*module[a-z]*', 'bcnw')
  let l:test_name = ""

  if l:line_number
    let l:test_name = getline(line_number)
    let l:test_name = subsitute(l:test_name, ".*module[a-z]*([\"']\\([\w\s]+\\)[\"']).*", "\\1", "g")
  else
    let l:test_name =  @%
    let l:test_name = substitute(l:test_name, ".[^\/]*\/", "", "g")
    let l:test_name = substitute(l:test_name, "-test\.(js|coffee)$", "", "g")
  endif

  let l:test_name = substitute(l:test_name, " ", "%20", "g")
  call OpenQUnit(l:test_name)
endfunction

function! RunQunitFocused()
  let line_number = search('^\s*test\s*(\([''"]\).*)', 'bcnW')
  let line_text = getline(line_number)
  let test_name = substitute(line_text, "^\s*test\s*(['\"]", "", "")
  let test_name = substitute(test_name, "['\"].*$", "", "")
  call OpenQUnit(test_name)
endfunction

command! -nargs=* -range RunQunitFile :call RunQunitFile()
command! -nargs=* -range RunQunitFocused :call RunQunitFocused()

nnoremap <leader>e :RunQunitFile<CR>
nnoremap <leader>E :RunQunitFocused<CR>
