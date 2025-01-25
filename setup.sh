#!/bin/bash

# エラーが発生したらスクリプトを停止する
set -e

echo "セットアップを開始します"

# dotfiles のシンボリックリンクを作成する
source ~/dotfiles/link.sh

# Homebrew がインストールされていない場合はインストールする
if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew をインストールします"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew はすでにインストールされています"
fi

echo "セットアップが完了しました"
