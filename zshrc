# path of ohmyzsh installation
export ZSH=$HOME/.oh-my-zsh

# better colors
export TERM="xterm-256color"

# path to custom scripts
PATH="$HOME/my_scripts:$PATH"
export PATH
export PATH=/opt/firefox/firefox:$PATH

# prompt
ZSH_THEME="sorin"

# reloads zsh
alias update='source ~/.zshrc'

#fixes rotation
alias fr='xrandr -o normal && exit'

#convers webp to png
alias conv='file=$(ls *.webp | head -n 1); dwebp $file -o ${file%%.webp}.png; rm $file'

#my dashboard of sorts
alias dashboard='google-chrome /home/oreo/dashboard/index.html'

#restarts wifi
alias wrpy='python wifi_reset.py'
alias wr='nmcli radio wifi off && figlet reseting wifi && sleep 2 && nmcli radio wifi on'

#nvim alias
alias v='nvim'
alias vim='nvim'

#launches piskel
alias piskel='/home/oreo/Piskel-0.14.0-64bits/piskel >/dev/null 2>&1'

#toggle trackpad status
alias ttp=toggletrackpad

#show colors
show_colors='for i in {1..256}; do print -P "%F{$i}Color : $i"; done;'

# vim keybinds
bindkey -v

# qol alias
alias mv="mv -iv"
alias cp="cp -riv"
alias mkdir="mkdir -vp"

# plugins
plugins=(git zsh-syntax-highlighting)

# nord dir colors
test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

source $ZSH/oh-my-zsh.sh
