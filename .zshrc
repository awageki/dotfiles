#################################  COMPLEMENT  #################################
# 補完機能を有効にする 
autoload -Uz compinit && compinit

# 補完で小文字でも大文字でもマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 補完候補一覧をカラー表示する
autoload colors
zstyle ':completion:*' list-colors ''

