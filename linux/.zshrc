####################
# General Settings #
####################
# 文字コードをUTF-8に設定
export LANG=ja_JP.UTF-8
# エディタをvimに設定
export EDITOR=vim
# KCODEにUTF-8を設定
export KCODE=u
# autotestでfeatureを動かす
export AUTOFEATURE=true
# キーバインド
# bindkey -v
bindkey -e
# cd時にディレクトリスタックにpushdする
setopt auto_pushd
# 重複したディレクトリをスタックにpushしない
setopt pushd_ignore_dups
#コマンドのスペルを訂正する
setopt correct
# プロンプト定義内で変数置換やコマンド置換を扱う
setopt prompt_subst
# バックグラウンドジョブの状態変化を即時報告する
setopt notify
# =commandを'which command'と同じ処理にする
#setopt equals
# 高機能なワイルドカード展開を使用する
setopt extended_glob


####################
# History Settings #
####################a
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
# ヒストリに実行時間も保存する
setopt extended_history
# 余分なスペースを削除してヒストリに保存する
setopt hist_reduce_blanks
# マッチしたコマンドのヒストリを表示できるようにする
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end
# すべてのヒストリを表示する
function history-all { history -E 1 }
# 他のシェルとヒストリをリアルタイムで共有する
setopt share_history
# !を使ったヒストリ展開を行う
setopt bang_hist
# 直前と同じコマンドはヒストリに追加しない
setopt hist_ignore_dups
# historyコマンドは登録しない
setopt hist_no_store
# 先頭にspaceがあれば登録しない


#######################
# Complement Settings #
#######################
# 自動補完を有効にする
autoload -Uz compinit
compinit
# 補完候補を一覧で表示する
setopt auto_list
# 補完キー連打で補完候補を順に表示する
setopt auto_menu
# 補完候補を出来るだけ詰めて表示する
setopt list_packed
# 補完候補にファイルの種類を表示する
setopt list_types
# カッコの対応などを自動的に補完
setopt auto_param_keys
# ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt auto_param_slash
# Shift-<Tab>で補完候補を逆順する
bindkey "^[[Z" reverse-menu-complete
# aliasを展開
setopt complete_aliases
# 小文字でも大文字でもマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# ../の後は今いるディレクトリを補完しない
zstyle ':completion:*' ignore-parents parent pwd ..



[ -f ~/.zshrc.linux ] && source ~/.zshrc.linux
