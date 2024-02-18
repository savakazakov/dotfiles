# Thefuck alias.
eval $(thefuck --alias)

# Inspect the PATH variable.
alias ep="echo ${PATH} | sed -e $'s/:/\\\n/g'"
