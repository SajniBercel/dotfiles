#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias
alias ls='ls --color=auto'
alias la='ls -a'
alias lat='ls -lat'
alias neofetch='fastfetch -c examples/13'

alias vi='nvim'
alias vim='nvim'

alias video='mpv'

alias kus='setxkbmap us'
alias khu='setxkbmap hu'

PS1='[\u@\h \W]\$ '
