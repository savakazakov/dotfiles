# To view the PATH:
# Or use "ep" which is an alias stored in the aliases.zsh script.
# echo ${PATH} | sed -e $'s/:/\\\n/g'

# export MANPATH="/usr/local/man:$MANPATH"

# fzf:
export FZF_DEFAULT_COMMAND="fd --type f --color=never --hidden"
export FZF_DEFAULT_OPTS="--no-height --reverse --border \
--color=bg+:#1e1f29,fg+:#f8f8f2,hl:#ff6c6b \
--color=fg:#f8f8f2,bg:#1e1f29,hl+:#f1fa8c \
--color=info:#9aedfe,prompt:#5af78e,pointer:#57c7ff \
--color=marker:#ff92d0,spinner:#5af78e,header:#57c7ff"

# --color=bg+:#282a36,fg+:#f1f1f0,hl:#ff6c6b \
# --color=fg:#f8f8f2,bg:#1e1f29,hl+:#f1fa8c \
# --color=info:#9aedfe,prompt:#5af78e,pointer:#57c7ff \
# --color=marker:#ff92d0,spinner:#5af78e,header:#57c7ff"

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :50 {}'"

export FZF_ALT_C_COMMAND="fd --type d --color=never --hidden"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"

# bat:
export BAT_THEME="Sublime Snazzy"
