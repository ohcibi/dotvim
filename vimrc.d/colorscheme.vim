" colors and formatting
syntax on

set termguicolors

if has("gui_running")
  colorscheme Tomorrow
else
  if $ITERM_PROFILE == "Hotkey Window"
    colorscheme Tomorrow-Night
  else
    colorscheme Tomorrow
  end
end

" Fold column
hi Folded  ctermbg=254 guibg=#FFf9fc
hi FoldColumn guibg=#fff9fc

" Indent guides
au VimEnter,ColorScheme * hi IndentGuidesOdd  ctermbg=254 guibg=#fff4e4
au VimEnter,ColorScheme * hi IndentGuidesEven ctermbg=231 guibg=#fffbeb

" highlight inactive terminal cursor
hi TermCursorNC ctermbg=14 ctermfg=15 cterm=NONE guibg=#e9e9ff

" make comments italic
highlight Comment cterm=italic cterm=italic gui=italic

" display a colorcolumn TODO: make width configurable in vimrc
set colorcolumn=80

" show cursorline and configure highlighting
set cursorline
highlight CursorLine term=underline cterm=None ctermbg=195 gui=None guibg=#fffdf5

" bold faced stuff
" highlight all {}[]()<>"'`.;, bold faced
hi boldFaced cterm=bold term=bold gui=bold
match boldFaced /[()\[\]{}"'`;,\.:]/

" Tomorrow colors
let s:foreground = "4d4d4c"
let s:background = "ffffff"
let s:selection = "d6d6d6"
let s:line = "efefef"
let s:comment = "8e908c"
let s:red = "c82829"
let s:orange = "f5871f"
let s:yellow = "eab700"
let s:green = "718c00"
let s:aqua = "3e999f"
let s:blue = "4271ae"
let s:purple = "8959a8"
let s:window = "efefef"

hi Search       gui=bold cterm=bold
hi Folded       gui=bold cterm=bold
hi StatusLine   gui=bold cterm=bold
hi LineNr       gui=bold cterm=bold
hi Pmenu        gui=bold cterm=bold
hi PreProc      gui=bold cterm=bold
hi Include      gui=bold cterm=bold
hi Function     gui=bold cterm=bold
hi Statement    gui=bold cterm=bold
hi Type         gui=bold cterm=bold
hi Todo         gui=bold cterm=bold
hi Special      gui=bold cterm=bold
hi Label        gui=bold cterm=bold
hi StorageClass gui=bold cterm=bold
hi Structure    gui=bold cterm=bold
hi TypeDef      gui=bold cterm=bold
hi TabLineSel   gui=bold cterm=bold
hi vimCommand   gui=bold cterm=bold

" php doc tags 💩
hi phpDocTags term=None cterm=bold ctermfg=235 gui=bold guifg=#222288
hi phpCommentTitle term=None cterm=bold ctermfg=240 gui=bold guifg=#2233AA
hi phpDocParam cterm=NONE ctermfg=240 gui=NONE guifg=#222255
hi phpDocIdentifier cterm=NONE ctermfg=240 gui=bold guifg=#333388

" javascript
exec "hi Special guifg=#" . s:green
hi javascriptParens guifg=#770000
hi! link javascriptObjectMethodName Function
hi! link javascriptBraces Function
