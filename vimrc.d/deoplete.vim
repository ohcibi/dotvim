" deoplete
if has('nvim')
  let g:deoplete#enable_at_startup = 1
  let g:deoplete#enable_smart_case = 1

  if !exists('g:deoplete#omni_patterns')
    let g:deoplete#omni_patterns = {}
  endif
  let g:deoplete#omni_patterns.javascript = '[^. *\t](=|\.)?\w*'
  if !exists('g:deoplete#omni#functions')
    let g:deoplete#omni#functions = {}
  endif
  let g:deoplete#omni#functions.javascript = [
\   'tern#Complete'
\ ]

  let g:deoplete#sources = {}
  let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']

" #let g:deoplete#file#enable_buffer_path = 1

  set cot=longest,menuone
endif

