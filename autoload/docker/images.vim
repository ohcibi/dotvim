let s:padding = 3
function docker#images#list()
	lua require'images'.whid()
	" let buf = nvim_create_buf(v:false, v:true)
	" let images = split(vimproc#system('docker images'), '\n')
	" let lines = map(['docker images'] + images + ['', 'total: '. len(images) .' images', ''], 's:padding . v:val')
  " let longest_line = max(map(copy(lines), 'strwidth(v:val)'))
	" let width = longest_line + (2 * s:padding)
	" call nvim_buf_set_lines(buf, 0, -1, v:true, images)
	" let opts = {'relative': 'editor', 'width': width, 'height': len(lines), 'col': 0,
	" 		\ 'row': 1, 'anchor': 'NW'}
	" let win = nvim_open_win(buf, 0, opts)
	" call nvim_win_set_option(win, 'number', v:false)
	" call nvim_win_set_option(win, 'relativenumber', v:false)
	" call nvim_win_set_option(win, 'cursorline', v:false)
	" call nvim_win_set_option(win, 'colorcolumn', '')
	" call nvim_win_set_option(win, 'filetype', 'DockerImagesList')
endfunction
