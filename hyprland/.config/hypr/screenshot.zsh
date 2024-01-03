#!/bin/zsh

filename=~/Screenshots/screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png && grim -g "$(slurp)" "$filename" && wl-copy < "$filename"
