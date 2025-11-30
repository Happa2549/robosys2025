#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 Morito Shunsuke

ng() {
    echo No.${1} is failed
    res=1
}

res=0

#正常なサンプルPDFを入力するテスト
out=$(echo "txt.pdf" | ./cvt_pdf)
[ $? = 0 ] || ng "$LINENO"
[ "$out" = "test " ] || ng "$LINENO"


#拡張子はあってるが存在しないファイルを入力するテスト
out=$(echo "aaa.pdf" | ./cvt_pdf)
[ $? != 0 ] || ng "$LINENO"
[ "$out" = "" ] || ng "$LINENO"


#PDFでもなければ存在もしないファイルを入力するテスト
out=$(echo "aaa.pdf" | ./cvt_pdf)
[ $? != 0 ] || ng "$LINENO"
[ "$out" = "" ] || ng "$LINENO"




[ "${res}" = 0 ] && echo ok #for human
exit $res

