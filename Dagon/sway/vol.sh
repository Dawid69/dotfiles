#!/bin/bash



case "$1" in
  --inc) pactl set-sink-volume @DEFAULT_SINK@ +2% 
  ;;
  --dec) pactl set-sink-volume @DEFAULT_SINK@ -2% 
  ;;
  --mute) pactl set-sink-mute @DEFAULT_SINK@ toggle
  ;;
esac
