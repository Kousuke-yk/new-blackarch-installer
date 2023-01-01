### Overview
New BlackArch Linux Installer is a fork of BlackArch-Installer.
It is a multifunctional version that not only fixes bugs in the existing BlackArch-Installer, but also adds new options such as installing desktop environments and setting input methods.

### New Features
1. Fixed a bug that caused problems in the previous version.
2. A new option to install a desktop environment has been added. This allows users to make BlackArchLinux a more beautiful operating system.
3. Several useful features have been added.
4. Some UI changes have been made.

### Changed details

#### Bugs fixed from the original version
- Fixed problem with Extra Package not working.
> Removed invalid packages not present in the database and added new useful packages such as pulseaudio, k3b, noto-fonts-cjk, etc.

- Fixed a problem in which all BlackArch tools were not installed due to a signature check error.
> This is handled by having the keyring updated in advance and temporarily disabling the signature check in pacman's configuration file.

- Fixed problem with passwd error.
> This is a bug that has been widely known for some time and will be fixed in batches without prior user action.

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

#### Currently Confirmed Issues
- Reflector does not work
> This is due to an older version of Python built into BlackArch's Live ISO as of September 2021. The solution is to update Python, but this is difficult to resolve due to C library related errors that occur when updating.
Therefore, users will need to manually change the mirror server if necessary.

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

#### Example of use
> Using KDE Plasma
![Screenshot_20230101_095927](https://user-images.githubusercontent.com/119842878/210158486-34300379-c85e-4a1b-9c66-73acd8e44c54.png)
