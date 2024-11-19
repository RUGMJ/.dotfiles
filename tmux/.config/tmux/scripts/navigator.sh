#!/bin/bash

selected=$(fd --max-depth 1 . ~/Development ~ | fzf)

tmux neww -c "$selected"
