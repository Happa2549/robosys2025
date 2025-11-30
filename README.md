# Convert PDF Text
━━━━━━━━━━━━━━━━━━━━━━━━━━

PDF 内のテキストをターミナルに出力するためのソフトウェアです。

 **Repository:**  
https://github.com/Happa2549/robosys2025

---

## 準備

### 1. Python環境のインストール

Ubuntu 系の場合、以下を実行してください：

```bash
sudo apt update
sudo apt install -y python3 python3-pip

pip install --upgrade pip  
pip install PyPDF2 pdfplumber  
 
chmod +x cvt_pdf  
chmod +x test.bash  

```
# テスト

上記三項目が終わり次第./test.bashと入力してください。  
すべて正常に動作している場合、okと表示されます。もし表示されず、No.~~ is failed
と表示された場合、test.bashのその~~行でエラーが起こっているのでご注意ください。


# ファイルの実行

- まず中身をテキストに起こしたいPDFファイルを用意する。

- そのファイルをcvt_pdfと同じディレクトリに置く。

- 次に以下を入力する。
  ```
  echo sanple.pdf | ./cvt_pdf
  ```
- 標準出力としてpdf内のテキストが出力される。

　　

- このソフトウェアパッケージは，GNU General Public License v3.0 (GPL-3.0) の下で配布されます。
- ソフトウェアの使用，コピー，改変，および再頒布が許可されています。
- GPL 3.0 の全文は"https://github.com/Happa2549/robosys2025/blob/main/COPYING"
  を参照してください。
- © 2025 Shunsuke Morito



