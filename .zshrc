export ZSH="/home/openyshev/.oh-my-zsh"

ZSH_THEME="dracula"

DISABLE_AUTO_UPDATE="true"

plugins=(
	git 
	tmux 
	zsh-autosuggestions 
	zsh-syntax-highlighting
	fzf
	node
	npm
	yarn
	nvm
    vi-mode
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=5'

alias vi=vim

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
bindkey '^ ' autosuggest-accept

