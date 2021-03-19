language en_US.UTF-8
if has('nvim')
  let $VISUAL = 'nvr -cc split --remote-wait'

  autocmd TermOpen * setlocal statusline=%{getcwd()}
  autocmd TermOpen * setlocal nonumber
  autocmd TermOpen * setlocal foldcolumn=0
  autocmd TermOpen * setlocal nospell
  autocmd TermOpen * setlocal nowrap
  autocmd TermOpen * setlocal statusline=%{get(b:,'term_title','')}
  autocmd TermOpen * setlocal titlestring=%{get(b:,'term_title','')}
  autocmd TermOpen,BufEnter * call terminal#indent()

  fun terminal#indent()
    if &buftype == 'terminal'
      IndentGuidesDisable
      let w:airline_disabled=1

    else
      IndentGuidesEnable
      let w:airline_disabled=0
    endif
  endfun

  nnoremap <leader>t :e term://
  nnoremap <leader>T :terminal<cr>
  nnoremap <leader>sT :split +terminal<cr>
  nnoremap <leader>vT :vsplit +terminal<cr>

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


  let g:term_color_0 = "ffffff"
  let g:term_color_1 = "e0e0e0"
  let g:term_color_2 = "d6d6d6"
  let g:term_color_3 = "8e908c"
  let g:term_color_4 = "969896"
  let g:term_color_5 = "4d4d4c"
  let g:term_color_6 = "282a2e"
  let g:term_color_7 = "1d1f21"
  let g:term_color_8 = "c82829"
  let g:term_color_9 = "f5871f"
  let g:term_color_10 = "eab700"
  let g:term_color_11 = "718c00"
  let g:term_color_12 = "3e999f"
  let g:term_color_13 = "4271ae"
  let g:term_color_14 = "8959a8"
  let g:term_color_15 = "a3685a"
endif
