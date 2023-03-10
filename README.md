### Welcome!
New BlackArch Installerは、BlackArch Installerの非公式更新プロジェクトであり、お使いのPC上にBlackArch Installerをインストールします。

オリジナル版のバグ修正に加え、新しい機能などを追加し、オリジナルのBlackArch Installerよりも優れたインストーラーを目指します。

### 注意
- このスクリプトはBlackArch Net Install ISO 2021-09-01またはArch Linux Live ISOでのみ動作します。
> Full ISOはサポートされていません。
FedoraやUbuntu、DebianなどのOSでは使用できません。
すでにインストールされているBlackArch / Arch上でこのスクリプトを実行しないでください。既存のシステムを破壊する恐れがあります。

- 現在、一つのディスクドライブ上にはBlackArch Linux以外のOSをインストールすることはできません。
>インストーラーは他のOSを検出してGRUBに追加することはできますが、まだ拡張パーティションの作成に対応していないため、ノートパソコンなどで一つのディスクドライブに他のOSとBlackArchを共存してインストールすることはできません。
WindowsやDebianなどのOSとデュアルブートをしたい場合、複数のディスクドライブを使用して、それぞれのドライブ上に個別にOSをインストールしてください。

### デプロイ方法
#### 1
Live DVDを起動し、ネットワークに接続します
```
# ip a
# dhcpcd <Interface name>
```

#### 2
スクリプトをダウンロードし、/binにコピーします。
```
# git clone https://github.com/Kousuke-yk/new-blackarch-installer.git
# cd ./new-blackarch-installer
# cp ./blackarch-install /bin
```

### Arch Linux ISOにデプロイする方法
setup.shを実行すると、自動で環境をセットアップします。
```
# curl -O https://raw.githubusercontent.com/Kousuke-yk/new-blackarch-installer/main/setup.sh
# chmod 777 ./setup.sh
# ./setup.sh
```

### バージョン履歴
#### 5.1
- 起動モードはpacmanリポジトリ経由のネットインストールのみに絞られました。
> Full ISOモードはエラーの関係から需要がなく、blackmanによるインストールは技術的な問題によりインストール時のライブ環境では使用できないためです。

- デスクトップ環境が新たに追加されました。
> KDE, GNOME, LXDEのほかに、LXQT、Cinnamon、XFCE、Budgie、Cutefishが追加されました。ぜひ、好みのデスクトップ環境を見つけてみてください！
ディスプレイマネージャは公式で特に指定されていないものは、カスタマイズされたLXDMをインストールします。

- Pacmanで分割ダウンロードを無効にしました。
> パラレルダウンロードを使用するとサーバーから切断されてダウンロードに失敗することがあるためです。

- システム更新時に勝手に名前がArch Linuxに変えられる問題を対策

#### 5.2
- 現時点でのバグをすべて修正しました。

#### 5.7 / 5.8
- 細かなバグを修正しました。

### ファイル内容
#### blackarch-install
> インストーラー本体です。

#### strap.sh
> ベースシステムをインストールしたあとにBlackArch Toolsをインストールする場合に使用します。

#### setup.sh
> Arch Linux ISOでこのインストーラーを使用する場合、このスクリプトを実行すると簡単に環境構築ができます。

