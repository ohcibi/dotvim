command -complete=custom,make#ListMake -nargs=1 Make :call make#make(<f-args>)

fun make#make(target)
 execute ":below split term://make " . a:target
 resize 10
endfun

fun make#ListMake(A,L,P)
    return system("make -pRrq : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($1 !~ \"^[#.]\") {print $1}}'| egrep -v '^[^[:alnum:]]' | sort")
endfun
