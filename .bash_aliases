# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# ack alias
alias ack='ack-grep'

# tmux alias
alias tmux='tmux -2'

# rpi measure clock, throttled, CPU/GPU temp
alias measure_rpi='~/bin/measure_rpi.sh'
alias measure_rpi_panel='~/bin/measure_rpi_panel.sh'
alias gettemp='temp=$(</sys/class/thermal/thermal_zone0/temp) && echo "$((temp/1000)) C"'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

