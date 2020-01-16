function! StartifyEntryFormat()
  return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1

let g:startify_commands = [
    \ {'T': [' Open Terminal', ':terminal']},
    \ {'C': [' Run :checkhealth', ':checkhealth']},
    \ {'U': [' Run :UpdateRemotePlugins', ':UpdateRemotePlugins']},
    \ {'B': [' Edit bundlerc.vim file', ':e ~/.vim/bundlerc.vim']},
    \ {'Rc': [' Edit vimrc.d', ':e ~/.vim/vimrc']},
    \ {'RC': [' Edit vimrc.d', ':e ~/.vim/vimrc.d']},
    \ {'lRC': [' Edit vimrc.local.d', ':e ~/.vim/vimrc.local.d']},
    \ {'Du': [' Upgrade all plugins', ':call dein#update()']},
    \ {'Dc': [' Recache dein rtp', ':call dein#recache_runtimepath()']},
    \ ]

let g:startify_lists = [
      \ { 'type': 'dir', 'header': ['     '. getcwd()] },
      \ { 'type': 'files', 'header': ['    '] },
      \ { 'type': 'sessions', 'header': ['   廊'] },
      \ { 'type': 'bookmarks', 'header': ['   '] },
      \ { 'type': 'commands', 'header': ['   ﲵ'] },
      \ ]
