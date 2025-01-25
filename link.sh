#!/bin/bash

DOTFILES_DIR=~/dotfiles

echo "シンボリックリンクを作成します"

# dotfilesディレクトリ内の二つ下のディレクトリにあるファイルに対してループ
for file in "$DOTFILES_DIR"/*/.[^.]*; do
  # ホームディレクトリ直下に作成するパスを計算
  link_name="$HOME/${file#"$DOTFILES_DIR"/*/}"
  echo "$file"
  echo "$link_name"
  # シンボリックリンクの作成
  ln -sfn "$file" "$link_name"

  # 作成したシンボリックリンクを出力
  echo "リンクを作成: $file -> $link_name"
done

# init.lua も対象とする
init_lua="$DOTFILES_DIR/nvim/init.lua"
link_name="$HOME/.config/nvim/init.lua"
ln -sfn "$init_lua" "$link_name"
echo "リンクを作成: $init_lua -> $link_name"

echo "シンボリックリンクが作成できました"
