[English Page](Introduction.md)

# Microsoft OfficeからTortoiseSVNコマンドを呼び出すVBAアドインプログラム #

Subversionを利用して文書管理を行う場合、Word, Excelといったアプリケーションソフトで、編集中のファイルに対して、バージョン管理が行なえると便利なことが多いものです。
そういうことができるプログラムが何かないかと探していたら、それぞれ以下で見つけました。

Excel

http://dkiroku.com/2005-07-01-11.html

Word

http://www.nekoconeko.com/~nagamori/wordsvn/

ただし、これらのプログラムは私が使用しているOffice97 SR2ではエラーとなる部分があり、また、バイナリファイル共有には欠かせないロック機能へのサポートも無かったので、改修を施しました。

## 見た目 ##

---


こんな感じ。
各コマンドは、メニューやコマンドバーから実行できます。

> Word97 SR2の場合
![http://msofficesvn.googlecode.com/svn/branches/rb-1.0.x/msofficesvn_common/doc/ja/wd97menu.jpg](http://msofficesvn.googlecode.com/svn/branches/rb-1.0.x/msofficesvn_common/doc/ja/wd97menu.jpg)

> Excel97 SR2の場合

![http://msofficesvn.googlecode.com/svn/branches/rb-1.0.x/msofficesvn_common/doc/ja/xl97menu.jpg](http://msofficesvn.googlecode.com/svn/branches/rb-1.0.x/msofficesvn_common/doc/ja/xl97menu.jpg)

> Word2007の場合

![http://msofficesvn.googlecode.com/svn/branches/rb-1.0.x/msofficesvn_common/doc/ja/wd2007menu.jpg](http://msofficesvn.googlecode.com/svn/branches/rb-1.0.x/msofficesvn_common/doc/ja/wd2007menu.jpg)

> Excel2007の場合

![http://msofficesvn.googlecode.com/svn/branches/rb-1.0.x/msofficesvn_common/doc/ja/xl2007menu.jpg](http://msofficesvn.googlecode.com/svn/branches/rb-1.0.x/msofficesvn_common/doc/ja/xl2007menu.jpg)

## 動作環境 ##

---


おそらく以下の環境で動作します。

  * WSHがインストールされているWindowsOS
  * Office97 ～ Office2007
  * TortoiseSVNがインストールされていること。

以下の環境で動作することは確認しました。

  * Windows XP Professional
  * Office97 SR2, Office2007
  * TortoiseSVN 1.4.8, 1.5.2

## インストール/アンインストール ##

---


インストール/アンインストール方法は以下をご参照ください。

[インストール/アンインストール方法](Install_ja.md)

## 機能概要 ##

---


### コマンド ###

アクティブな文書やワークブックに対して、以下のコマンドを実行できます。

  * 更新
  * ロックを取得
  * コミット
  * 差分
  * ログ表示
  * リポジトリブラウザ
  * ロックを開放
  * 追加
  * 削除
  * エクスプローラを開く

[更新]、[ロックを取得]、[コミット]、[ロックを開放]では、いったんアクティブな文書やワークブックを閉じて、TortoiseSVNの当該コマンドを実行し、その後再度その文書やワークブックを開きます。

また、[エクスプローラを開く]は、アクティブな文書やワークブックを選択した状態で、エクスプローラを開くことができますので、他のTortoiseSVNの機能を利用したいときに、素早く利用することができます。

### ショートカットキー(ver.1.1.0 新機能) ###

コマンドにショートカットキーを割り当てることができます。

### オプション設定(ver.1.1.0 新機能) ###

以下のオプション設定ができます。

  * コマンド実行時のファイル保存メッセージのオン／オフ
  * コミットコマンド実行時のファイルの閉じる／再度開くのオン／オフ
  * [更新]、[コミット]のコマンド終了時の進行ダイアログボックスの自動終了

<注記>

ver.1.1.0 新機能を利用するには、インストール後別途設定が必要なことがあります。
[カスタマイズ方法](CustomSetting_ja.md)をご参照ください。


## メリット/デメリット ##

---


メリット

  * 特に画面が狭い場合、TortoiseSVNを使うために画面をエクスプローラに切り替えて編集中のファイルを探してバージョン管理操作をするのは結構手間なことがあるが、このプログラムによって解消される。
  * 編集中にファイルの保存や閉じるのを忘れて、コミットしたりロックの取得をしたりすることが無くなる。
  * 試行錯誤しながら文書作成していると、頻繁に差分やログを見たいことがあるが、編集中のファイルに対してすぐに実行できるのでうれしい。

デメリット

  * アクティブな文書やブックに対してのみコマンドを実行するので、複数ファイルを編集してまとめてコミットするような場合は使えない。

## チュートリアル ##

---


未作成

## ライセンス ##

---


GNU General Public License v2 にしたがってご利用ください。

## 謝辞 ##

---


元のプログラムを作成、公開してくださった、Osamu OKANOさん、Kazuyuki NAGAMORIさんに感謝します。

## 連絡先 ##

何かご意見がございましたら、メールでご連絡ください。

Koki Yamamoto <kokiya@gmail.com>
