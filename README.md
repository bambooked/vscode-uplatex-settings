# vscode-uplatex-settings

## 動作確認環境

- Macbook Air 2022 (OS version : macOS 15.7.1)
- Visual Studio Code (version : 1.103.2) ※以降 VSCode
- Docker(version : 28.3.3)
- Dev Containers(version : 0.422.1)

## 概要

動作動画

https://github.com/user-attachments/assets/0adf94f3-63d3-4485-8cf8-b31578a29d35

これはローカルでLaTeXを用いて文書を編集するための、DockerやVSCodeの設定ファイル群です。

この設定ファイルを任意の場所に配置し、VSCode上で操作を行えば、VScodeをエディターとして、upLaTeXのソースコードの編集やコンパイルが行えるようにしてあります。

着想は korosuke613/texlive-ja-devcontainer-templateより得ています。
そちらがVSCodeのバージョンアップデートにより動作しなくなってしまったため、同等の機能を持ったものを再現するために作成したものとなっています。

このファイル群の作成に快くご許可をくださったkorosuke613様、誠にありがとうございます。

## 手順

VSCodeとDockerはbrewなどを経由してインストールしてある前提です。

1. VSCodeの拡張機能のDev-Containerをインストールする。
2. upLaTeX環境を作りたいディレクトリで、git cloneコマンドなどを用いてこのリポジトリをクローンする。
3. VSCode上のポップアップ(右下)が出てくるはずなので、「コンテナで再度開く」を選択する。(もしでてこなかった場合、vscodeの最も左下の><のようなマークを押せばプルダウンメニューが出てきて、「コンテナで再度開く」が選べるようになります。)
4. 十分な回線速度があれば、5分ほどでコンテナが完成する。
5. 自動的にコンテナ内部に接続された状態になるので、sample.texなどをコンパイルして動作確認してみてください！
