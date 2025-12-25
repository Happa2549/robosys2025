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

