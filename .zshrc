fpath=($fpath "/home/pante/.zfunctions")

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

# SPACESHIP_TIME_SHOW=true
SPACESHIP_DIR_PREFIX=
SPACESHIP_DIR_LOCK_SYMBOL=" "
SPACESHIP_GIT_PREFIX=
SPACESHIP_GIT_STATUS_PREFIX=" "
SPACESHIP_GIT_STATUS_SUFFIX=""
SPACESHIP_GIT_BRANCH_PREFIX=" "
SPACESHIP_GIT_STATUS_MODIFIED=""
SPACESHIP_GIT_STATUS_UNTRACKED=""
SPACESHIP_GIT_STATUS_AHEAD=""
SPACESHIP_GIT_STATUS_BEHIND=""

HISTFILE=~/.zsh_history
HISTSIZE=800
SAVEHIST=800
HISTDUP=erase

setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS

setopt histignoredups
setopt nosharehistory
setopt noextendedhistory
setopt histfindnodups

setopt HIST_FIND_NO_DUPS

source $HOME/.aliases
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-interactive-cd.plugin.zsh
source ~/.zsh/shf.zsh
source ~/.zsh/k/k.sh

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source ~/.zsh/auto_expand.zsh

ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=002
ZSH_HIGHLIGHT_STYLES[precommand]=fg=002
ZSH_HIGHLIGHT_STYLES[arg0]=bold

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey '^d' autosuggest-accept 	# ctrl+d
bindkey '^[^M' autosuggest-execute	# ctrl+enter
bindkey '^H' backward-kill-word
bindkey '^[[3;5~' kill-word

# colored man - https://github.com/ael-code/zsh-colored-man-pages
function man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;34m") \
		LESS_TERMCAP_md=$(printf "\e[1;34m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;47;33m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		PAGER="${commands[less]:-$PAGER}" \
		man "$@"
}


# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
#         source /etc/profile.d/vte.sh
# fi

eval $(thefuck --alias)
fpath=($fpath "/home/pante/.zfunctions")

# go lang:
export PATH=$PATH:/usr/local/go/bin

export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which java))))
export PATH=$PATH:$JAVA_HOME/bin
