# Only allow unique entries in the PATH variable.
typeset -U path

# Easier to read PATH variable modification:
path+=(
  "${HOME}/.local/bin"
  "${GOPATH}/bin"
  "${GOROOT}/bin"
)