#开启颜色
autoload -U colors && colors
#complication and prompt
autoload -Uz compinit promptinit
compinit
promptinit

#prompt format
PS1=$'%B%F{14}Mi-Max3%F{12}:%F{10}%~%F{7}\n%F{9}[%D{%K:%M:%S}]%F{11}>>>%F{255} %b'

source /data/data/com.termux/files/home/stuff/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias ll='ls -lh --color=auto'
alias la='ls -lha --color=auto'
