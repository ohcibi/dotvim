" colors and formatting
syntax on
set background=light

if has("gui_running")
  colorscheme tidy
else
  colorscheme github
end

highlight Comment cterm=italic cterm=italic gui=italic

set colorcolumn=80
set cursorline
highlight CursorLine term=underline cterm=None ctermbg=195 gui=None guibg=#ccddff

hi SpellBad term=underline ctermfg=NONE cterm=underline ctermbg=225
hi Error term=underline ctermfg=NONE cterm=underline ctermbg=225

hi boldFaced cterm=bold term=bold gui=bold
match boldFaced /[()\[\]{}]/

" php doc tags
hi phpDocTags term=None cterm=bold ctermfg=235 gui=bold guifg=#222288
hi phpCommentTitle term=None cterm=bold ctermfg=240 gui=bold guifg=#2233AA
hi phpDocParam cterm=NONE ctermfg=240 gui=NONE guifg=#222255
hi phpDocIdentifier cterm=NONE ctermfg=240 gui=bold guifg=#333388
