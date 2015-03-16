# CommandBarControlとCommandBarPopup

# Introduction #

http://msdn.microsoft.com/ja-jp/library/microsoft.office.core.commandbarcontrol%28v=office.11%29.aspx

# Details #

解説

CommandBarControl オブジェクトは CommandBarControls コレクションのメンバです。CommandBarControl オブジェクトのプロパティとメソッドは、すべて CommandBarButton オブジェクト、CommandBarComboBox オブジェクト、および CommandBarPopup オブジェクトによって共有されています。

ユーザー設定のコマンド バー コントロールを操作するコードを記述する場合は、CommandBarButton オブジェクト、CommandBarComboBox オブジェクト、および CommandBarPopup オブジェクトを使用します。これら 3 つのオブジェクトでは表すことができない、コンテナ アプリケーションの組み込みのコントロールを操作するコードを記述する場合は、CommandBarControl オブジェクトを使用します。

CommandBarControl オブジェクトを取得するには、Controls(index) を使用します。引数 index には、コントロールのインデックス番号を指定します。このとき、コントロールの Type プロパティには、msoControlLabel、msoControlExpandingGrid、msoControlSplitExpandingGrid、msoControlGrid、または msoControlGauge を指定する必要があります。

メモ:

CommandBarControl として宣言した変数には、CommandBarButton、CommandBarComboBox、および CommandBarPopup の値を割り当てることができます。

FindControl メソッドを使用して CommandBarControl オブジェクトを取得することもできます。

プラットフォーム

開発プラットフォーム

Windows XP Home Edition, Windows XP Professional, Windows Server 2003 および Windows 2000