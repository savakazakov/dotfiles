# Check if this is Iterm2. Use oh-my-zsh only in Iterm2.
if [[ "$ITERM_PROFILE" ]]; then
  	# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
	# Initialization code that may require console input (password prompts, [y/n]
	# confirmations, etc.) must go above this block; everything else may go below.
	if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
		source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
	fi

	# Path to the oh-my-zsh installation.
	export ZSH="$HOME/.oh-my-zsh"

	# Plugins:
	# Standard plugins can be found in $ZSH/plugins/
	# Custom plugins may be added to $ZSH_CUSTOM/plugins/
	# Add wisely, as too many plugins slow down shell startup.
	plugins=(
		git
		zsh-autosuggestions
		zsh-syntax-highlighting 
		web-search
		ripgrep
	)

	# Source OMZ specific zsh setup scripts.
	source $ZSH/oh-my-zsh.sh
fi

# General zsh configuration:

# fzf.
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh