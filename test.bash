#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 Morito Shunsuke
# SPDX-License-Identifier: GPL-3.0-only

ng() {
    echo "No.${1} is failed"
    res=1
}

res=0

# 正常なPDFを全文表示
out=$(cat txt.pdf | ./cvt_pdf)
[ $? = 0 ] || ng "$LINENO"
[ -n "$out" ] || ng "$LINENO"

# 1ページ目指定
out=$(
    (echo 1; echo "-"; cat txt.pdf) | ./cvt_pdf
)
[ $? = 0 ] || ng "$LINENO"
[ -n "$out" ] || ng "$LINENO"

# 存在しないPDF
out=$(cat aaa.pdf | ./cvt_pdf)
[ $? != 0 ] || ng "$LINENO"
[ "$out" = "" ] || ng "$LINENO"

# 画像のみPDF（テキスト抽出不可）
out=$(cat pict.pdf | ./cvt_pdf)
[ $? = 0 ] || ng "$LINENO"
[ "$out" = "" ] || ng "$LINENO"

# 検索テスト
out=$(
    (echo test; echo "-"; cat txt.pdf) | ./cvt_pdf
)
[ $? = 0 ] || ng "$LINENO"
[ -n "$out" ] || ng "$LINENO"

