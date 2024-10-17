# To view the PATH:
# Or use "ep" which is an alias stored in the aliases.zsh script.
# echo ${PATH} | sed -e $'s/:/\\\n/g'

# export MANPATH="/usr/local/man:$MANPATH"

# fzf:
# Use FZF_FD_IGNORE = 1 to add the --no-ignore flag to fd.
# Example: "export FZF_FD_IGNORE=1"
# A function to use fd with optional --no-ignore and --type
fd_with_options() {
  local type_arg="$1"
  local ignore_flag="$FZF_FD_IGNORE"
  shift

  if [ "$ignore_flag" = "1" ]; then
    fd --type "$type_arg" --color=never --hidden --no-ignore "$@"
  else
    fd --type "$type_arg" --color=never --hidden "$@"
  fi
}

# Previously used to work:
# export FZF_DEFAULT_COMMAND="fd_with_options f"
export FZF_DEFAULT_COMMAND="zsh -c '. ~/Dev/dotfiles/envs.zsh; fd_with_options f'"
export FZF_DEFAULT_OPTS="--no-height --reverse --border \
--color=bg+:#1e1f29,fg+:#f8f8f2,hl:#ff6c6b \
--color=fg:#f8f8f2,bg:#1e1f29,hl+:#f1fa8c \
--color=info:#9aedfe,prompt:#5af78e,pointer:#57c7ff \
--color=marker:#ff92d0,spinner:#5af78e,header:#57c7ff"

# For files (Ctrl-T and default search)
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :50 {}'"

# For directories (Alt-C)
export FZF_ALT_C_COMMAND="zsh -c '. ~/Dev/dotfiles/envs.zsh; fd_with_options d'"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"

# Make fzf not ignore the contents of .gitignore files.
export FZF_FD_IGNORE=1

# bat:
export BAT_THEME="Sublime Snazzy"

# homebrew:
export HOMEBREW_AUTO_UPDATE_SECS=604800

# raycast:
# Causes instant prompt to error.
# export OPENAI_API_KEY=$(lpass show --notes 'OpenAI API key')