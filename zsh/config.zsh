# -----------
#   history
# -----------
HISTFILE=$HOME/.zsh-history # 履歴を保存するファイル
HISTSIZE=100000             # メモリ上に保存する履歴のサイズ
SAVEHIST=1000000            # 上述のファイルに保存する履歴のサイズ
setopt inc_append_history   # 実行時に履歴をファイルにに追加していく
setopt hist_ignore_dups     # 直前の重複を記録しない
setopt share_history        # 履歴を他のシェルとリアルタイム共有する


# --------------
#   complement
# --------------
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # 大文字小文字区別しない
## 補完方法毎にグループ化する。
zstyle ':completion:*' format '%B%F{blue}%d%f%b'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:default' menu select=2
setopt auto_cd
function chpwd() { ls }

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=244"