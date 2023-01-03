### 概要
New BlackArch Linux Installerは、[BlackArch Installer](https://github.com/BlackArch/blackarch-installer)の非公式フォークです。
これには、オリジナル版のバグ修正やデスクトップ環境を追加する新たな機能があります。

### 新しい機能
1. オリジナル版の致命的なバグを修正、または対策しました。
2. デスクトップ環境を追加する新たなオプションを追加しました。これによりユーザーはBlackArchをより一層美しいOSに仕上げることができます。
3. その他に便利な機能がいくつか追加されました。
4. 一部のUIが変更されました。

### 変更の詳細

#### オリジナル版から修正したバグ
- Extra packagesが機能しない問題を修正
> 無効なパッケージを削除し、新たに便利なパッケージを大量に追加しました。

- BlackArch Linux Toolsがインストールされない問題を修正
> キーリングの問題でツールがインストールされない問題を修正しました。

- 大量のpasswdエラーに見舞われる問題を修正
> これは以前から広く知られているバグですが、インストーラー内に自動修正する機能を追加したのでユーザーが事前にキーリングを更新する必要はありません。

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
解決するには、LiveISOをPythonが最新になるようにビルドする必要があります。

### 開始方法
- BlackArch NetInstall ISOを使用している場合
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

#### インストール後の使用例
> KDE Plasmaを使用中
![Screenshot_20230101_095927](https://user-images.githubusercontent.com/119842878/210158486-34300379-c85e-4a1b-9c66-73acd8e44c54.png)

> [Movies URL](https://youtu.be/_nIWi3kOkgU)
