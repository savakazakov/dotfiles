
eval "$(/opt/homebrew/bin/brew shellenv)"

# Load zsh configuration for all shells.
if [ -f ~/.zshrc ]; then
  source ~/.zshrc
fi