#!/bin/bash 
#SPDX-FileCopyrightText: 2025 Morito Shunsuke

ng() {
    echo No.${1} is failed
    res=1
}

res=0


out=$(echo "a.pdf" | python3 cvt_pdf)
if [[ $? -ne 0 ]]; then
    ng "$LINENO"
fi



[ "${res}" = 0 ] && echo ok #for human 
exit $res
