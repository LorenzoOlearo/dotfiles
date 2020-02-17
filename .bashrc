#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Default
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# KDE related 
alias kde-restart='kstart5 plasmashell'

# youtube-dl related
alias dl='youtube-dl --audio-format best --audio-quality 0 --embed-thumbnail --add-metadata'
alias dl-mp3='youtube-dl --audio-format "mp3" --embed-thumbnail --add-metadata'
alias dl-yt='youtube-dl -f bestaudio[ext=m4a] --embed-thumbnail' 

# Power related
alias sus='systemctl suspend'
alias off='systemctl poweroff'

# Nvidia fan control
alias gpu70='nvidia-settings -a "[gpu:0]/GPUFanControlState=1" -a "[fan:0]/GPUTargetFanSpeed=70"'
alias gpu60='nvidia-settings -a "[gpu:0]/GPUFanControlState=1" -a "[fan:0]/GPUTargetFanSpeed=60"'
alias gpu50='nvidia-settings -a "[gpu:0]/GPUFanControlState=1" -a "[fan:0]/GPUTargetFanSpeed=50"'
alias gpu30='nvidia-settings -a "[gpu:0]/GPUFanControlState=1" -a "[fan:0]/GPUTargetFanSpeed=30"'
alias gpu20='nvidia-settings -a "[gpu:0]/GPUFanControlState=1" -a "[fan:0]/GPUTargetFanSpeed=20"'
alias gpu0='nvidia-settings -a "[gpu:0]/GPUFanControlState=1" -a "[fan:0]/GPUTargetFanSpeed=0"'
