#!/bin/bash

mkdir -p ~/.config/nvim/colors
if [[ ! -f ~/.config/nvim/colors/verdurous.vim ]]; then
    printf "source ~/verdurous/verdurous.vim" > ~/.config/nvim/colors/verdurous.vim
    printf "Adding skeleton ~/.config/nvim/colors/verdurous.vim\n"
fi
