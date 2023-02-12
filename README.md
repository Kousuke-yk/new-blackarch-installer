### 概要
New BlackArch Linux Installerは、[BlackArch Installer](https://github.com/BlackArch/blackarch-installer)の非公式フォークです。
これには、オリジナル版のバグ修正やデスクトップ環境を追加する新たな機能があります。

### 警告
このスクリプトは、あくまでBlackArch Linux自体のインストールを提供するまでです。
BlackArchのツールを悪意のある目的で使用しないでください。

このスクリプトの使用には、年齢制限などはありません。年齢性別問わずご自由にお使いください

作者はアノニマスやクラッカーではありません。

### 注意
2012年頃のレガシーPCでこのスクリプトを作成、テストしています。
なお、作者は以前に2020年頃のRyzen5(3600)+GTX1660TIを搭載したPCでオリジナルのBlackArchInstallerを実行したところ、mkfs.ext4フォーマットのエラーが発生しました。

このスクリプトを作成するにあたり、作者が検証した際はPCが古いためかそのようなエラーは発生しませんでしたが、もしあなたが最新のRTX4090やRTX3060TIなどを搭載する最新のハイエンドPCやハイエンドサーバーなどでこのインストーラーを実行しようとしている場合、何らかのエラーが発生する可能性があります。

そのため、エラーが発生しても自己解決をしてください。作者はエラーが発生する環境がないため検証することも修正することもほぼできません。
もしエラーが発生した場合やそれを修正できた場合、是非ご報告ください。

### 新しい機能
1. オリジナル版の致命的なバグを修正、または対策しました。
2. デスクトップ環境を追加する新たなオプションを追加しました。これによりユーザーはBlackArchをより一層美しいOSに仕上げることができます。
3. その他に便利な機能がいくつか追加されました。
4. 一部のUIが変更されました。

### 変更の詳細

#### 削除された機能
- いくつかの質問のステップは無駄なので削除し、新たなUIに差し替えられました。
> ロケールとキーマップの設定において、リストを表示するか質問するのではなく、
入力画面に直接、わかりやすく表示するようにしました。

- メッセージの出力を変更するオプションは削除され、標準でメッセージが表示されるように変更しました。
> Quietモードだとエラーメッセージが表示されず、トラブルを解決できなくなると考えたことからこのオプションは廃止され、メッセージ出力はVERBOSEモードに固定されました。

- 標準ユーザーの作成をスキップすることはできなくなりました。
> これは、rootユーザーだと表示されないファイルや、動作しないアプリケーションがあるためです。

#### 追加された機能
- デスクトップ環境をインストールする機能を追加しました。
> BlackArchは本来、ウィンドウマネージャを使用するため標準ではデスクトップ環境は使用されません。
しかし、デスクトップ環境をインストールすることでより美しいLinuxに仕上げることができます。
注: デスクトップ環境をインストールしてもウィンドウマネージャのみの環境は維持されます。
注: オリジナルのLXDM+ウィンドウマネージャのみの環境をインストールすることも引き続き可能です。

- 日本語入力(fcitx5-mozc)をインストールする機能を追加
> インストール後にenironmentを変更して再起動する面倒な手順をスキップします。

#### 修正できない問題
- Reflectorが動作しない
> これは、スクリプトの問題ではなくLive ISOに内蔵されているPythonのバージョンが古いことが原因です。
解決するには、LiveISOをPythonが最新になるようにビルドする必要があります。しかし、公式はやる気がなくて多分ISOを更新しないのでこれが実現することはないでしょう。

### 開始方法
#### 一般的な方法
1. `dhcpcd`などでネットワークに接続する
2. 下のコマンドを上から順番に実行する
```
~# git clone "https://github.com/Kousuke-yk/new-blackarch-installer.git"
~# cd ./new-blackarch-installer
~# cp ./blackarch-install /bin
```

3. `blackarch-install`を実行してインストールを開始する。
```
~# blackarch-install
```

#### 外部ストレージを使用する方法
1. 事前に`blackarch-install`をHDDなどにコピーする
2. Live ISOを起動する

```
~# mount /dev/sdb1 /mnt
~# cp /mnt/blackarch-install /bin
~# umount /dev/sdb1
```

4. `blackarch-install`を実行する
```
~# blackarch-install
```

#### クレジット
原作者: noptrix
改造: kousuke
