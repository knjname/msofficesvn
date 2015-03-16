注記! これはver.1.1.x用の文書です。最新の文書は、http://code.google.com/p/msofficesvn/wiki/Install_jaです。

# インストール方法 #

## 準備 ##

1. すでに旧バージョンのmsofficesvnをインストールしている場合は、アンインストールしてください。
アンインストール方法は、[インストール/アンインストール方法](Install_100_ja.md) をご参照ください。

2. まず、TortoiseSVNをインストールしてください。

http://tortoisesvn.net/downloads

3. 本サイトのDownloadsページより、最新バージョンの `msofficesvn_<version>_ja.zip` ファイルをダウンロードし、解凍してください。以下のファイルが得られます。

Excelアドイン用ファイル
  * excelsvn.xla
  * excelsvn.ini

Wordアドイン用ファイル
  * wordsvn.dot
  * wordsvn.ini

## Office97SR2～Office2003の場合 ##

### Excel ###

1. Excelアドイン用ファイルを以下のフォルダへコピーしてください。

| Office97 SR2 | C:\Program Files\Microsoft Office\Office\Library\ |
|:-------------|:--------------------------------------------------|
| Office2000 | C:\Program Files\Microsoft Office\Office\Library\ |
| OfficeXP | C:\Program Files\Microsoft Office\Office10\Library\ |
| Office2003 | %APPDATA%\Microsoft\AddIns\ |

%APPDATA%は、ログインユーザのApplication Dataフォルダを指します。

例えば、ログイン名が"koki"の場合は、%APPDATA%は以下のようになります。
```
C:\Documents and Settings\koki\Application Data
```
%APPDATA%をエクスプローラのアドレスバーに入力することでApplication Dataフォルダを表示することができます。

2. Excelを起動し、[ツール]/[アドイン...]メニューより表示される画面で、Excelsvnチェックボックスをオンにしてください。

3. [Subversion](Subversion.md)メニューとコマンドバーが表示されます。

### Word ###

1. Wordアドイン用ファイルを以下のフォルダへコピーしてください。

| Office97 SR2 | C:\Program Files\Microsoft Office\Office\STARTUP\ |
|:-------------|:--------------------------------------------------|
| Office2000 | C:\Program Files\Microsoft Office\Office\STARTUP\ |
| OfficeXP | C:\Program Files\Microsoft Office\Office10\STARTUP\ |
| Office2003 | %APPDATA%\Microsoft\Word\STARTUP\ |

2. Wordを起動してください。

3. [Subversion](Subversion.md)メニューとコマンドバーが表示されます。

## Office2007の場合 ##

### Excel ###

1. Excelアドイン用ファイルを以下のフォルダへコピーしてください。
```
%APPDATA%\Microsoft\AddIns\
```

2. Excelを起動し、[Officeボタン]/[Excelのオプション]/[アドイン]/[管理]で"Excelアドイン"を選択して、[設定]ボタンをクリックしてください。アドイン画面が表示されます。

3. アドイン画面で、Excelsvnチェックボックスが表示されますので、オンにしてください。

4. [Subversion](Subversion.md)メニューとコマンドバーが表示されます。

### Word ###

1. Wordアドイン用ファイルを以下のフォルダへコピーしてください。
```
%APPDATA%\Microsoft\Word\STARTUP\
```

2. Wordを起動してください。

3. [Subversion](Subversion.md)メニューとコマンドバーが表示されます。


これでmsofficesvnを使用することができますが、よりカスタマイズをしたい場合は、[カスタマイズ方法](CustomSetting_ja.md)をご参照ください。


# アンインストール方法 #

## Office97SR2～Office2003の場合 ##

### Excel ###

1. Excelを起動し、[ツール]/[アドイン...]メニューより表示される画面で、Excelsvnチェックボックスをオフにしてください。

2. [Subversion](Subversion.md)メニューとコマンドバーが削除されます。

3. インストール時にコピーした、Excelアドイン用ファイルを削除してください。

### Word ###

1. Wordを起動し、[ツール]/[テンプレートとアドイン...]メニューより表示される画面で、wordsvn.dotチェックボックスをオフにしてください。

2. [Subversion](Subversion.md)メニューとコマンドバーが削除されます。

3. インストール時にコピーした、Wordアドイン用ファイルを削除してください。

4. アンインストール後も、Subversionメニューやツールバーが残ってしまう場合は、Wordを終了しNormal.dotを削除し、再度Wordを起動してください。Normal.dotが新規作成され、残っていたSubversionメニューやツールバーが表示されなくなります。

## Office2007の場合 ##

### Excel ###

1. Excelを起動し、[Officeボタン]/[Excelのオプション]/[アドイン]/[管理]で"Excelアドイン"を選択して、[設定]ボタンをクリックしてください。アドイン画面が表示されます。

2. アドイン画面で、Excelsvnチェックボックスが表示されますので、オフにしてください。

3. [Subversion](Subversion.md)メニューとコマンドバーが削除されます。

4. インストール時にコピーした、Excelアドイン用ファイルを削除してください。

### Word ###

1. Wordを起動し、[Officeボタン]/[Wordのオプション]/[アドイン]/[管理]で"Wordアドイン"を選択して、[設定]ボタンをクリックしてください。アドイン画面が表示されます。

2. アドイン画面で、Wordsvnチェックボックスが表示されますので、オフにしてください。

3. [Subversion](Subversion.md)メニューとコマンドバーが削除されます。

4. インストール時にコピーした、Wordアドイン用ファイルを削除してください。

5. アンインストール後も、Subversionメニューやツールバーが残ってしまう場合は、Wordを終了しNormal.dotmを削除し、再度Wordを起動してください。Normal.dotmが新規作成され、残っていたSubversionメニューやツールバーが表示されなくなります。