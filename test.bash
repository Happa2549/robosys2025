#!/bin/bash -xv
#PDX-FileCopyrightText: 2025 Morito Shunsuke

ng() {
    echo No.${1} is failed
    res=1
}

res=0


out=$(echo "txt.pdf" | python3 cvt_pdf)
[ $? = 0 ] || ng "$LINENO"
[ "$out" = "test " ] || ng "$LINENO"


[ "${res}" = 0 ] && echo ok #for human
exit $res

