[English Page](Introduction.md)

注記! これはver.1.0.0用の文書です。最新の文書は、http://code.google.com/p/msofficesvn/wiki/Introduction_jaです。

# Microsoft OfficeからTortoiseSVNコマンドを呼び出すVBAアドインプログラム #

Subversionを利用して文書管理を行う場合、Word, Excelといったアプリケーションソフトで、編集中のファイルに対して、バージョン管理が行なえると便利なことが多いものです。
そういうことができるプログラムが何かないかと探していたら、それぞれ以下で見つけました。

Excel

http://dkiroku.com/2005-07-01-11.html

Word

http://www.nekoconeko.com/~nagamori/wordsvn/

ただし、これらのプログラムは私が使用しているOffice97 SR2ではエラーとなる部分があり、また、バイナリファイル共有には欠かせないロック機能も無かったので、改修を施しました。

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
  * TortoiseSVN 1.4.7

## インストール/アンインストール ##

---


インストール/アンインストール方法は以下をご参照ください。

[インストール/アンインストール方法](Install_ja.md)

## 機能概要 ##

---


アクティブな文書やワークブックに対して、以下のコマンドを実行できます。

  * 更新
  * ロックを取得
  * コミット
  * 差分
  * ログ表示
  * リポジトリブラウザ
  * ロックを開放
  * 追加
  * エクスプローラを開く

[更新]、[ロックを取得]、[コミット]では、いったんアクティブな文書やワークブックを閉じて、TortoiseSVNの当該コマンドを実行し、その後再度その文書やワークブックを開きます。

また、[エクスプローラを開く]は、アクティブな文書やワークブックを選択した状態で、エクスプローラを開くことができますので、他のTortoiseSVNの機能を利用したいときに、素早く利用することができます。

## メリット/デメリット ##

---


メリット

  * 特に画面が狭い場合、TortoiseSVNを使うために画面をエクスプローラに切り替えて編集中のファイルを探してバージョン管理操作をするのは結構手間なことがあるが、このプログラムによって解消される。
  * 編集中にファイルの保存や閉じるのを忘れて、コミットしたりロックの取得をしたりすることが無くなる。
  * 試行錯誤しながら文書作成していると、頻繁に差分やログを見たいことがあるが、編集中のファイルに対してすぐに実行できるのでうれしい。

デメリット

  * 更新、ロック取得、コミットなどのコマンド実行前にファイルをいったん閉じて、コマンド実行後ファイルを開き直すので、ファイルサイズが大きいと時間がかかってうっとうしいかもしれない。
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