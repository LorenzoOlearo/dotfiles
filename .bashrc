#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Default
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

tilde='~'

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

export EDITOR=vim
export XDG_CURRENT_DESKTOP=kde dolphin
export TERMINAL="konsole"

# System alias
alias dud='du -d 1 -h'
alias duf='du -sh *'
alias fd='find . -type d -name'
alias ff='find . -type f -name'
alias fehwal='feh --bg-fill'
alias wally='wal -a "90" -i'
alias uu='urxvt'
alias vlc='vlc --no-qt-system-tray'
alias ita='curl https://corona-stats.online/Italy?minimal=true'
alias killtg='killall telegram-desktop'
alias quote='fortune -a | fmt -79 -s | $(shuf -n 1 -e cowsay cowthink) -$(shuf -n 1 -e b d g p s t w y) -f $(shuf -n 1 -e $(cowsay -l | tail -n +2)) -n'
alias mirror-update='reflector --latest 5 --sort rate --save /etc/pacman.d/mirrorlist'

# Dotfiles backup alias
alias dot='cd ~/Dropbox/dotfiles/'

# Current work directory alias
alias dumb='cd ~/Dropbox/Bicocca/side-projects/dumb-dumb-sorting-demo/'

# Uni alias
alias bic='cd ~/Dropbox/Bicocca/'
alias anno1='cd ~/Dropbox/Bicocca/primo-anno/'
alias sm1='cd ~/Dropbox/Bicocca/primo-anno/primo-semestre/'
alias sm2='cd ~/Dropbox/Bicocca/primo-anno/secondo-semestre/'
alias prog2='cd ~/Dropbox/Bicocca/primo-anno/secondo-semestre/programmazione-2/'
alias alge='cd ~/Dropbox/Bicocca/primo-anno/secondo-semestre/algebra-lineare/'
alias arch='cd ~/Dropbox/Bicocca/primo-anno/secondo-semestre/architettura-elaboratori/'
alias algo='cd ~/Dropbox/Bicocca/primo-anno/secondo-semestre/algoritmi-strutture-dati/'



# KDE related 
alias kde-restart='kstart5 plasmashell'

# youtube-dl related
alias dl='youtube-dl --audio-format best --audio-quality 0 --embed-thumbnail --add-metadata'
alias dl-mp3='youtube-dl --audio-format "mp3" --embed-thumbnail --add-metadata'
alias dl-yt='youtube-dl -f bestaudio[ext=m4a] --embed-thumbnail' 

# Power related
alias sus='systemctl suspend'
alias off='systemctl poweroff'
alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0'
alias bat-stat='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "state|to\ full| percentage"'

# Nvidia fan control
alias gpu70='nvidia-settings -a "[gpu:0]/GPUFanControlState=1" -a "[fan:0]/GPUTargetFanSpeed=70"'
alias gpu60='nvidia-settings -a "[gpu:0]/GPUFanControlState=1" -a "[fan:0]/GPUTargetFanSpeed=60"'
alias gpu50='nvidia-settings -a "[gpu:0]/GPUFanControlState=1" -a "[fan:0]/GPUTargetFanSpeed=50"'
alias gpu30='nvidia-settings -a "[gpu:0]/GPUFanControlState=1" -a "[fan:0]/GPUTargetFanSpeed=30"'
alias gpu20='nvidia-settings -a "[gpu:0]/GPUFanControlState=1" -a "[fan:0]/GPUTargetFanSpeed=20"'
alias gpu0='nvidia-settings -a "[gpu:0]/GPUFanControlState=1" -a "[fan:0]/GPUTargetFanSpeed=0"'


#
# # ex - archive extractor
# # usage: ex <file>
#
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
