#开启颜色
autoload -U colors && colors
#complication and prompt
autoload -Uz compinit promptinit
compinit
promptinit

#prompt format
PS1=$'%B%F{14}Mi-Max3%F{12}:%F{10}%~%F{7}\n%F{9}[%D{%K:%M:%S}]%F{11}>>>%F{255} %b'

#ignore case
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

#auto complication fish style color
source /data/data/com.termux/files/home/obj/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#color of ls, need install coreutils
if [ -f $HOME/obj/panard-configs/lscolor-256color ]; then
    eval $(dircolors -b $HOME/obj/panard-configs/lscolor-256color)
fi

alias ll='ls -lh --color=auto'
alias la='ls -lha --color=auto'
alias ta='tmux attach'
alias tmux='tmux -u'
