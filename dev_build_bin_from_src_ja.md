#addinバイナリファイルをソースファイルから作成する方法

以下のパスはC:\work\msofficesvn\へソースをチェックアウトした場合

# Excel #

## Office 2007より古いバージョン用 ##

ExcelSvn addinをアンインストールする

C:\work\msofficesvn\trunk\olderthan2007\addin\excelsvn\ImpExpCode.xls
を開く。

リボンの下に
セキュリティの警告 マクロが無効にされました。
と表示されるので、そのオプションボタンで、"このコンテンツを有効にする"を選択する。

Alt + F11 でVisual Basic Editorを起動する。

実行 | Sub/ユーザーフォームの実行を選択。

マクロ画面で、
日本語版の場合:ImportCodeJa
英語版の場合:ImportCodeEn
をそれぞれ選択し、実行する。ソースコードが読み込まれBook2が生成される。
ThisWorkbook.clsがノートパッドで開かれるので、

```
'------------------- Copy & paste from here to the ThisWorkbook module of excelsvn.xla --------------------
```

以下のコードを生成されたBook?のMicrosoft Excel Objects | ThisWorkbook へコピー＆ペーストする。

VBAProject(Book2)を選択し、デバッグ | VBAProjectのコンパイルを実行し、コンパイルする。

ファイル | Book2の上書き保存を選択する。名前を付けて保存画面が表示される。

ファイルの種類で、"Excel 97-2003 アドイン(**.xla)"を選択し、日本語版、英語版それぞれ、excelsvn.xlaというファイル名で保存する。**

## Office 2007以降のバージョン用 ##

C:\work\msofficesvn\trunk\2007orlater\addin\excelsvn\ImpExpCode.xls
を開く。

Office 2007より古いバージョン用と同様に、ソースファイルからアドインファイルを作成する。

ファイルの種類は、"Excel アドイン(**.xlam)"を選択し、日本語版、英語版それぞれ、excelsvn.xlamというファイル名で保存する。**

作成したexcelsvn.xlamをCustom UI Editor for Microsoft Office で開き、ツリービューに表示されるアドインファイル名を右クリックし、[Custom UI Part](Office2007.md)を選択しUIを追加する。

http://msdn.microsoft.com/ja-jp/library/office/ee691832%28v=office.14%29.aspx

英語版の場合
C:\work\msofficesvn\trunk\2007orlater\msofficesvn\_common\src\customUI\en\customUI.xml

の内容をCustom UIタブへ貼り付け保存する。

日本語版の場合
英語版と同じように、まずアドインファイルへUIを追加し、保存する。

この時customUI.xmlへの日本語の入力はしないこと。日本語を入力するとaddinが正常に作成されず、Excelへ組み込んだときにもリボンが表示されない。

日本語UIの追加は以下の手順で行う。
excelsvn.xlamはzipファイルなので、拡張子としてファイル名に.zipを追加し、
excelsvn.xlam.zipとして、圧縮ファイル中の
customUI\customUI.xmlファイルを日本語版customUI.xmlファイル、すなわち、
C:\work\msofficesvn\trunk\2007orlater\msofficesvn\_common\src\customUI\ja\customUI.xml

へ置き換える。

# Word #

## Office 2007より古いバージョン用 ##

wordsvn addinをアンインストールする。

C:\work\msofficesvn\trunk\olderthan2007\addin\wordsvn\ImpExpCode.doc
を開いて、excelsvnと同様に、日本語版、英語版、各々のwordsvn.dotファイルを作成する。

[注記]
Excelとは異なり、Wordでは、アドインのコードをVisual Basic Editorで編集できない(ロックされてソースコードをひらくことができない)。コードを編集したいときは、wordsvn addinをアンインストールしてwordsvn.dotファイルを直接wordで開くとVBEで編集できるようになる。

## Office 2007以降のバージョン用 ##

wordsvn addinをアンインストールする。

C:\work\msofficesvn\trunk\2007orlater\addin\wordsvn\ImpExpCode.doc
を開いて、excelsvnと同様に、日本語版、英語版、各々のwordsvn.dotmファイルを作成する。

[注記]
Excelとは異なり、Wordでは、アドインのコードをVisual Basic Editorで編集できない(ロックされてソースコードをひらくことができない)。コードを編集したいときは、wordsvn addinをアンインストールしてwordsvn.dotmファイルを直接wordで開くとVBEで編集できるようになる。

# Power Point #

VBEの[ファイル|ファイルのインポート]ですべてのアドインソースファイルを読み込む。

[ツール|VBAProjectのプロパティ|条件付きコンパイル引数]へ以下を入力する。

PPT = 1

[デバッグ|VBAProjectのコンパイル]でコンパイル後、アドインファイルとして保存する。