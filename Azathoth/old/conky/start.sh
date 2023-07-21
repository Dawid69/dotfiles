#!/bin/zsh

pidof conky >/dev/null && killall conky || conky -d --quiet

# Checks to see if conky is running... Opens it if not, closes it if it does. 

