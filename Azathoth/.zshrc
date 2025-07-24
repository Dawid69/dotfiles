# Lines configured by zsh-newuser-install
HISTFILE=~/.config/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dawid/.zshrc'

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
autoload -Uz compinit
compinit
# End of lines added by compinstall

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word


ZSH_ALIAS=/home/dawid/.config/zsh_alias

export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT='-c'
export TERMINAL='wezterm'

export EDITOR='/bin/nvim'

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

source $ZSH_ALIAS



# Starship 
eval "$(starship init zsh)"
eval "$(atuin init zsh --disable-up-arrow)"
export PATH=~/.local/bin:"$PATH"
export PATH=~/bin:"$PATH"

