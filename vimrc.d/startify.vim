let s:git_files = split(vimproc#system('git ls-files 2> /dev/null'), '\n')

let g:startify_change_to_dir = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_files_number = 5
let g:startfy_session_autoload = 1

function! GitEntryInformation(path)
  if (index(s:git_files, a:path) >= 0)
    return "(". trim(vimproc#system('git log -n 1 --pretty="@%h from %cr" --abbrev-commit -- '. a:path)) .")"
  endif

  return ""
endfunction

function! StartifyEntryFormat()
  return "WebDevIconsGetFileTypeSymbol(absolute_path) .' '. entry_path . ' '. GitEntryInformation(entry_path)"
endfunction

function! s:list_commits()
  if (len(s:git_files) == 0)
    return []
  endif

  let git = 'git'
  let commits = systemlist(git .' log --oneline | head -n' . g:startify_files_number)
  let git = 'G'. git[1:]
  return map(commits, '{"line": matchstr(v:val, "\\s\\zs.*"), "cmd": "'. git .' show ". matchstr(v:val, "^\\x\\+") }')
endfunction

" function! s:list_mrs()
"   if (len(s:git_files) == 0)
"     return []
"   endif
"
"   let git = 'git'
"   let glab = 'glab'
"   let branch = system(git . ' branch --show-current')
"   let mrs = systemlist(glab .' mr list -s ' . branch . ' --per-page 10')
"   let git = 'G'. git[1:]
"   return map(mrs, '{"line": matchstr(v:val, "\\s\\zs.*"), "cmd": "'. glab .' mr checkout -t ". matchstr(v:val, "^\\x\\+") }')
" endfunction

if (len(s:git_files) > 0)
  if (!exists('g:startify_custom_header'))
    let g:startify_custom_header = []
   endif
  let g:startify_custom_header =
    \ startify#pad(split(vimproc#system('git show -s --pretty=short HEAD | cowsay -n -w'), '\n'))
endif

let g:startify_skiplist = [
    \ 'COMMIT_EDITMSG',
    \ escape(fnamemodify(resolve($VIMRUNTIME), ':p'), '\') .'doc',
    \ escape(fnamemodify(resolve(g:dein#_runtime_path), ':p'), '\') .'doc',
    \ ]

let g:startify_bookmarks = [
    \ {'B': '~/.vim/bundlerc.vim'},
    \ {'Rc': '~/.vim/vimrc'},
    \ {'RC': '~/.vim/vimrc.d'},
    \ {'lRC': '~/.vim/vimrc.local.d'},
    \ {'F': '~/.config/fish'},
    \ ]

let g:startify_commands = [
    \ {'T': [' Open Terminal', ':terminal']},
    \ {'S': [' Split horizontal', ':split']},
    \ {'Sv': [' Split vertical', ':vsplit']},
    \ {'ide': [' Open "ide" config', 'execute "below" "13split" | execute "term" | execute "above" "80vsplit" | term']},
    \ {'C': [' Run :checkhealth', ':checkhealth']},
    \ {'U': [' Run :UpdateRemotePlugins', ':UpdateRemotePlugins']},
    \ {'Du': [' Upgrade all plugins', ':call dein#update()']},
    \ {'Dc': [' Recache dein rtp', ':call dein#recache_runtimepath()']},
    \ {'Q': [' Exit Vim', ':qa']},
    \ {'!Q': [' Exit Vim not saving any buffer', ':qa!']},
    \ ]

"      \ { 'header': ['   '], 'type': function('s:list_mrs') },
let g:startify_lists = [
      \ { 'type': 'sessions', 'header': ['   廊'] },
      \ { 'type': 'dir', 'header': ['       '. getcwd()] },
      \ { 'header': ['   '], 'type': function('s:list_commits') },
      \ { 'type': 'files', 'header': ['    '] },
      \ { 'type': 'bookmarks', 'header': ['   '] },
      \ { 'type': 'commands', 'header': ['   ﲵ'] },
      \ ]

let g:startify_session_savecmds = [
       \ 'Startify'
       \ ]

let g:startify_session_savevars = [
       \ 'g:startify_session_savevars',
       \ 'g:startify_session_savecmds'
       \ ]

"au FileType startify IndentLinesDisable
au FileType startify hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg
au FileType startify setlocal nocursorline
au User Startified setlocal nocursorline
"au User Startified IndentLinesDisable

let g:indent_guides_exclude_filetypes = ['startify']
