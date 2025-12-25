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

# stdinを完全に空にする
out=$(echo -n "" | ./cvt_pdf)
[ $? != 0 ] || ng "$LINENO"
[ "$out" = "" ] || ng "$LINENO"

# 検索元が pdf ではない
out=$(
    (echo test; echo "-"; echo hello) | ./cvt_pdf
)
status=$?
[ "$status" != 0 ] || ng "$LINENO"
[ "$out" = "" ] || ng "$LINENO"

# ただの文字列を渡す
out=$(echo "hello" | ./cvt_pdf)
status=$?
[ "$status" != 0 ] || ng "$LINENO"
[ "$out" = "" ] || ng "$LINENO"

# パイプ元が失敗
out=$(false | ./cvt_pdf)
status=$?
[ "$status" != 0 ] || ng "$LINENO"
[ "$out" = "" ] || ng "$LINENO"

# %%EOF を読ませない（壊れたPDF）
out=$(head -c 20 txt.pdf | ./cvt_pdf)
status=$?
[ "$status" != 0 ] || ng "$LINENO"
[ "$out" = "" ] || ng "$LINENO"

# UTF-8で解釈不能なコマンド部
out=$(
    printf "\xff\xff\n-\n" | cat - txt.pdf | ./cvt_pdf
)
status=$?
[ "$status" != 0 ] || ng "$LINENO"
[ "$out" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo ok
exit $res




