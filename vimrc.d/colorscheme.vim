" colors and formatting
syntax on

if has("gui_running")
  colorscheme github
else
  if $ITERM_PROFILE == "Hotkey Window"
    colorscheme Tomorrow-Night
  else
    colorscheme github
  end
end

" sanitize github colorscheme
highlight Folded  ctermbg=254 guibg=#F1F1FF
highlight LineNr  ctermbg=255 guibg=#F8F8FF

" make comments italic
highlight Comment cterm=italic cterm=italic gui=italic

" display a colorcolumn TODO: make width configurable in vimrc
set colorcolumn=80

" show cursorline and configure highlighting
set cursorline
highlight CursorLine term=underline cterm=None ctermbg=195 gui=None guibg=#ccddff

" remove any colorization of (spelling) errors
hi SpellBad term=underline ctermfg=NONE cterm=underline ctermbg=225
hi Error term=underline ctermfg=NONE cterm=underline ctermbg=225

" highlight all {}[]()<>"'`.;, bold faced
hi boldFaced cterm=bold term=bold gui=bold
match boldFaced /[()\[\]{}\<\>"'`;,\.:]/

" php doc tags 💩
hi phpDocTags term=None cterm=bold ctermfg=235 gui=bold guifg=#222288
hi phpCommentTitle term=None cterm=bold ctermfg=240 gui=bold guifg=#2233AA
hi phpDocParam cterm=NONE ctermfg=240 gui=NONE guifg=#222255
hi phpDocIdentifier cterm=NONE ctermfg=240 gui=bold guifg=#333388

