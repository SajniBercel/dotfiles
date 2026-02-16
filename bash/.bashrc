#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ls
alias ls='ls --color=auto'
alias la='ls -a'
alias lat='ls -lat'
alias neofetch='fastfetch -c examples/13'

alias video='mpv'

# Keysboard
alias kus='setxkbmap us'
alias khu='setxkbmap hu'

# java
export JAVA_HOME=/usr/lib/jvm/default
export PATH="$JAVA_HOME/bin:$PATH"

# Screen Size
monitor='eDP-1'
alias small='xrandr --output $monitor --mode 800x600'
alias medium='xrandr --output $monitor --mode 1280x960'
alias big='xrandr --output $monitor --mode 1920x1080'

PS1='[\u@\h \W]\$ '
