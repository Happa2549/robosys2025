#!/bin/bash 
#SPDX-FileCopyrightText: 2025 Morito Shunsuke


ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

out=$(seq 5 | python3 ./plus)
[ "${out}" = 15.0 ] || ng "$LINENO"


[ "${res}" = 0 ] && echo ok
exit $res
