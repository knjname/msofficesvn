参照設定が必要なライブラリはなるべく少なくしたいが、そのためにレイトバインディングを多用したり、定数を直接数値で記述するのは、どうなんだろう?


現状で参照設定が必要なライブラリ

Excel97

  * Visual Basic For Application

> チェックボックスをオフにしようとしても、「使用中のコントロールまたは参照を削除することはできません。」とエラーがでてオフにできない。

  * Microsoft Excel 8.0 Object Library

> 同上。

  * Microsoft Office 11.0 Object Library

> これが無いと、CommandBarでコンパイルエラー
> でも、なぜ11.0が必要なんだろう?
> どんな環境でもあるのか?

  * Microsoft ActiveX Data Objects 2.5 Library

> これ以降のバージョンのライブラリが無いと、adTypeTextでコンパイルエラー