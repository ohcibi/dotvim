if has('nvim')
  let $VISUAL = 'nvr -cc split --remote-wait'

  autocmd TermOpen * setlocal statusline=%{getcwd()}
  autocmd TermOpen * setlocal relativenumber
  autocmd TermOpen * setlocal foldcolumn=0
  autocmd TermOpen * setlocal nospell
  autocmd TermOpen * IndentGuidesDisable
  autocmd TermOpen * echo 'TermOpen'
  autocmd BufEnter * call terminal#indent()

  fun terminal#indent()
    if &buftype == 'terminal'
      IndentGuidesDisable
    else
      IndentGuidesEnable
    endif
  endfun

  nnoremap <leader>t :e term://
  nnoremap <c-t> :terminal<cr>

  tnoremap <C-space> <C-\><C-N>
  tnoremap <leader><space> <C-\><C-N>
  tnoremap <C-h> <C-\><C-N><C-w>h
  tnoremap <C-j> <C-\><C-N><C-w>j
  tnoremap <C-k> <C-\><C-N><C-w>k
  tnoremap <C-l> <C-\><C-N><C-w>l
  inoremap <C-h> <C-\><C-N><C-w>h
  inoremap <C-j> <C-\><C-N><C-w>j
  inoremap <C-k> <C-\><C-N><C-w>k
  inoremap <C-l> <C-\><C-N><C-w>l
endif
