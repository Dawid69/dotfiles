#!/bin/bash

while read line; do
	if [ "$line" = "1" ]; then
		echo " 󰤇  "
	else
		echo "."
	fi
done </sys/class/leds/input2::numlock/brightness
