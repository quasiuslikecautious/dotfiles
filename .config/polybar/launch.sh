#!/usr/bin/env bash

DIR="$HOME/.config/polybar"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar -q main -c "$DIR"/config.ini &

external_monitor=$(xrandr --query | grep '^DP-1')
if [[ $external_monitor = *\ connected* ]]; then
  polybar -q external -c "$DIR"/config.ini &
fi

