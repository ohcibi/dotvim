nnoremap <c-p> :FZFFiles<cr>
"nnoremap gf :FZFFiles<cr>
"nnoremap gb :Buffers<cr>
nnoremap <c-b> :Buffers<cr>

nnoremap rg :Rg

command! -bang -nargs=? -complete=dir FZFFiles
  \ call fzf#vim#files(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('right:50%:hidden', '?')
  \                         : fzf#vim#with_preview('right:50%', '?'),
  \                 <bang>0)

command! FZFBuffers
  \ call fzf#vim#buffers(fzf#vim#with_preview())

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('right:50%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)

let g:fzf_layout = { 'down': '~30%' }

function InsertEmoji(selected)
	$put=substitute(a:selected,'^\\s*\(.\).*$','\1','i')
endfunction

map <c-e> :call fzf#run(fzf#wrap({'source': 'gitmoji -l', 'sink': function('InsertEmoji')}))<cr>
