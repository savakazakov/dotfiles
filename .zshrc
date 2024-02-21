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
		thefuck
		brew
		docker
		docker-compose
		fzf
	)

	# Source OMZ specific zsh setup scripts.
	source $ZSH/oh-my-zsh.sh
fi

# General zsh configuration:

# fzf.
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/savakazakov/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/savakazakov/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/savakazakov/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/savakazakov/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
