#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar pam1 2>&1 | tee -a /tmp/polybar1.log & disown
polybar pam2 2>&1 | tee -a /tmp/polybar2.log & disown
polybar pam3 2>&1 | tee -a /tmp/polybar3.log & disown
polybar pam4 2>&1 | tee -a /tmp/polybar4.log & disown
polybar pam5 2>&1 | tee -a /tmp/polybar5.log & disown
polybar pam6 2>&1 | tee -a /tmp/polybar6.log & disown
polybar pam7 2>&1 | tee -a /tmp/polybar7.log & disown

echo "Polybar launched..."
