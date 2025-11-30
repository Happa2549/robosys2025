# Convert PDF Text
＝＝＝＝＝＝＝＝＝＝＝

- これはPDF内のテキストをターミナル上に出力するソフトウェアです。




  #準備  
　- まずはpythonのダウンロード  
　　　sudo apt update  
　　　sudo apt install -y python3 python3-pip  
  　これらをダウンロードして今回作成したソフトウェアの環境と合わせます。  
  
  - 次にモジュールのインストール  
  　　pip install --upgrade pip  
  　　pip install PyPDF2 pdfplumber  
    これらをインストールしてPDF内のテキスト抽出に使います。  

  - 最後に実行権限の付与  
    　chmod +x cvt_pdf  
    　chmod +x test.bash  
    これらを入力することで ./cvt_pdfなどのように使用できます。  

  - 上記三項目が終わり次第、./test.bashと入力してください。  
    すべて正常に動作している場合、okと表示されます。もし表示されず、No.n is failed と表示された場合、test.bashのそのｎ行でエラーが起こっているのでご注意ください。

    

　　

- このソフトウェアパッケージは，GNU General Public License v3.0 (GPL-3.0) の下で配布されます。
- ソフトウェアの使用，コピー，改変，および再頒布が許可されています。
- GPL 3.0 の全文は　"https://github.com/Happa2549/robosys2025/blob/main/COPYING"
  を参照してください。
- © 2025 Shunsuke Morito



