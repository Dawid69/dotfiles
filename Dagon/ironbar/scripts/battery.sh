#!/bin/bash

upower -i $(upower -e | rg 'BAT') | rg "percentage" | awk '{print $2}'
