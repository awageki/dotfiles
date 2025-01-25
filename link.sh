#!/bin/bash

DOTFILES_DIR=~/dotfiles

echo "シンボリックリンクを作成します"

# dotfilesディレクトリ内の二つ下のディレクトリにあるファイルに対してループ
for file in "$DOTFILES_DIR"/*/.[^.]*; do
  # ホームディレクトリ直下に作成するパスを計算
  link_name=~/${file#"$DOTFILES_DIR"/*/}

  # シンボリックリンクの作成
  ln -sfn "$file" "$link_name"

  # 作成したシンボリックリンクを出力
  echo "リンクを作成: $file -> $link_name"
done

echo "シンボリックリンクが作成できました"
