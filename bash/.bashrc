# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export XDG_CURRENT_DESKTOP=i3
export HISTSIZE=50
export HISTFILESIZE=50

# ls
alias ls='ls --color=auto'
alias la='ls -a'
alias lat='ls -lat'
alias neofetch='fastfetch -c examples/13 --logo ~/.config/fastfetch/AsciiLogo$((RANDOM % 2 + 4)).txt --logo-type file'
alias tree='tree -C'

# video
alias video='mpv'

# working director
alias cdwd='cd ~/Projects/C/oprBead/'

# Keyboards
alias kus='setxkbmap us'
alias khu='setxkbmap hu'

# java
export JAVA_HOME=/usr/lib/jvm/default
export PATH="$JAVA_HOME/bin:$PATH"

# Screen Size
monitor='Virtual-1'
alias small='xrandr --output $monitor --mode 800x600'
alias medium='xrandr --output $monitor --mode 1280x720'
alias big='xrandr --output $monitor --mode 1920x1080'

PS1='[\u@\h \W]\$ '
neofetch
