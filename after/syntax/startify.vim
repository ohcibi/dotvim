syntax match StartifyGitCommit /\vcommit [a-h0-9]{7,40}/ contained containedin=ALL
syntax match StartifyGitCommitHash /\v\@?[a-h0-9]{7,40}/ contained containedin=ALL
syntax match StartifySpecial /\v<empty buffer>|<quit>|\(.*\)$/ contains=StartifyGitCommitHash

syn match StartifyGitAuthor /\vAuthor: .* <[^>]*>/ contained containedin=ALL skipwhite
syn match StartifyGitAuthorKeyword /\vAuthor:/ contained containedin=StartifyGitAuthor
syn region StartifyGitEmail matchgroup=StartifyGitEmailDelimiter start=/</ end=/>/ keepend oneline contained containedin=ALL

hi! link StartifyGitCommit Keyword
hi! link StartifyGitCommitHash Identifier
hi! link StartifyGitAuthor Type
hi! link StartifyGitAuthorKeyword Keyword
hi! link StartifyGitEmail Special
hi! link StartifyGitEmailDelimiter Delimiter
