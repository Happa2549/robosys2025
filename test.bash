#!/bin/bash 
#SPDX-FileCopyrightText: 2025 Morito Shunsuke

ng() {
    echo No.${1} is failed
    res=1
}

res=0
input_pdf="a.pdf"


if [[ ! -f "$input_pdf" ]]; then
    ng "$LINENO"
fi


echo "$input_pdf" | python3 cvt_pdf
if [[ $? -ne 0 ]]; then
    ng "$LINENO"
fi

[ "$res" = 0 ] && echo OK
exit $res

