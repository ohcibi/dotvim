au BufEnter Dockerfile setlocal makeprg=docker\ build\ -t\ %:p:h:t\ .

set errorformat=The\ command\ '%s'\ returned\ a\ non-zero\ code:\ %n,Error\ response\ from\ daemon:\ %m
set shellpipe=2>&1\ 1>&3\ \|\ tee
