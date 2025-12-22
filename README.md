# Convert PDF Text
━━━━━━━━━━━━━━━━━━━━━━━━━━

PDF 内のテキストをターミナルに出力するためのソフトウェアです。

 **Repository:**  
https://github.com/Happa2549/robosys2025

## 目次
- [準備](#準備)
- [ファイルの実行](#ファイルの実行)
- [ライセンス](#ライセンス)

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


 ### 2. 対応環境
 - Ubuntu 22.04 / 20.04
 - ※ 本環境では release-upgrades が無効化されており、
 -    Ubuntu のメジャーバージョンアップは実施できなかったため
 -    本バージョン以降の動作は保証できないです｡
 -    
 - Python 3.10, 3.11



# ファイルの実行

- まず中身をテキストに起こしたいPDFファイルを用意する。

- そのファイルをcvt_pdfと同じディレクトリに置く。

- 次に以下を入力する。
 ``` 
　## 使用例
　$ cat sample.pdf | ./cvt_pdf
　これはPDFのテキストです。
 ```
  
- 標準出力としてpdf内のテキストが出力される。

## 既知の制限
   - 画像だけのPDFはテキストが抽出できません（別途OCRが必要）。
   - 日本語の特殊フォントは正しく出力されない場合があります。

 
# ライセンス
- このソフトウェアパッケージは，GNU General Public License v3.0 (GPL-3.0) の下で配布されます。
- ソフトウェアの使用，コピー，改変，および再頒布が許可されています。
- GPL 3.0 の全文は"https://github.com/Happa2549/robosys2025/blob/main/COPYING"
  を参照してください。
- © 2025 Shunsuke Morito



