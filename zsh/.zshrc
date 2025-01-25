# 補完機能を有効にする 
autoload -Uz compinit && compinit
# 補完で小文字でも大文字でもマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 補完候補一覧をカラー表示する
autoload colors
zstyle ':completion:*' list-colors ''

# ピープ音の停止する
setopt no_beep
setopt nolistbeep

# History を設定する
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
# 直前と同じコマンドは履歴に追加しない
set hist_ignore_dups

# alias
alias vi='nvim'
alias dc='docker compose'
alias gpod='git pull origin develop'
alias gsd='git switch develop'
