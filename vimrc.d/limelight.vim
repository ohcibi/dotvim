map gl :Limelight<cr>
map gL :Limelight!<cr>

augroup writing
  au!
  autocmd! User GoyoEnter Limelight
  autocmd! User GoyoLeave Limelight!

  autocmd! InsertEnter * Limelight
  autocmd! InsertLeave * Limelight!
augroup END
