set runtimepath^=~/.vim/dein/repos/github.com/Shougo/dein.vim

let g:python3_host_prog=expand('~/.venv/neovim3/bin/python')
let g:node_host_prog=expand('/Users/ohcibi/.volta/tools/image/packages/neovim/bin/neovim-node-host')

if dein#load_state('~/.vim/dein/')
  call dein#begin('~/.vim/dein')

  call dein#add('~/.vim/dein/repos/github.com/Shougo/dein.vim')

  source $HOME/.vim/bundlerc.vim

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on

if dein#check_install()
 call dein#install()
endif
