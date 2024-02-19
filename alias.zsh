# Thefuck alias.
eval $(thefuck --alias)

# Inspect the PATH variable.
alias ep="echo ${PATH} | sed -e $'s/:/\\\n/g'"

alias zshvim='vim  ~/.zshrc'
alias zshsource='source ~/.zshrc'
alias zpbcopy='cat ~/.zshrc | pbcopy'
alias cleardesktop='rm -rf  ~/Desktop/*'
