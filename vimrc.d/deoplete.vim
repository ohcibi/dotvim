" deoplete
if has('nvim')
  let g:deoplete#enable_at_startup = 1

  if !exists('g:deoplete#omni_patterns')
    let g:deoplete#omni_patterns = {}
  endif
  let g:deoplete#omni_patterns.javascript = '[^. *\t](=|\.)?\w*'


  call deoplete#custom#source('omni', 'functions', {
        \ 'javascript': ['tern#Complete']
        \})

  call deoplete#custom#option('enable_smart_case',  1)
  call deoplete#custom#option('sources', {
          \ 'javascript.jsx': ['file', 'ultisnips', 'ternjs']
  \})

" #let g:deoplete#file#enable_buffer_path = 1

  set cot=longest,menuone

  call deoplete#custom#option('num_processes', 4)
endif

