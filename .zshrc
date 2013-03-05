PATH=$PATH:/usr/local/share/npm/bin

EDITOR=vi
export GREP_COLORS=1
export CLICOLOR=1
export WORKON_HOME=~/.virtualenvs
export GIT_PS1_SHOWDIRTYSTATE=yes
export GIT_PS1_SHOWUNTRACKEDFILES=yes

source /usr/local/bin/virtualenvwrapper.sh

alias ls='ls -la'
PROMPT=$' \e[0;30m%~ \e[0m$ '

autoload colors
colors
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*' check-for-changes true
precmd() {
    vcs_info
}

zstyle ':vcs_info:*' unstagedstr "%{$fg[red]%}"
zstyle ':vcs_info:git*' formats "%{$fg[green]%}%u%b%{$reset_color%} "

setopt prompt_subst
PROMPT=$' %{\e[0;30m%}%~ %{\e[0m%}${vcs_info_msg_0_}$ '
RPROMPT=$'[%{$fg[cyan]%}%*%{$reset_color%}]'
