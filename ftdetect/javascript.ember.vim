function! EmberDetect(...) abort
  if exists('b:ember_root')
    return 1
  endif
  let fn = fnamemodify(a:0 ? a:1 : expand('%'), ':p')
  if fn =~# ':[\/]\{2\}'
    return 0
  endif
  if !isdirectory(fn)
    let fn = fnamemodify(fn, ':h')
  endif
  let file = findfile('config/environment.js', escape(fn, ', ').';')
  if !empty(file) && isdirectory(fnamemodify(file, ':p:h:h') . '/app')
    let b:ember_root = fnamemodify(file, ':p:h:h')
    return 1
  endif
endfunction

autocmd BufRead,BufNewFile,BufEnter *.js
      \ if EmberDetect(getcwd()) |
      \  set ft=javascript.javascript-ember |
      \ endif
