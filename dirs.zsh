function changeCodeContext() {
  cd $1 &&
    code $1 -r
}

# Add aliases for different code contexts.
alias codedot="changeCodeContext ~/Dev/dotfiles/"
