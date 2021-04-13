#!/bin/bash

mkdir -p ~/.config/nvim/colors
if [[ ! -f ~/.config/nvim/colors/verdurous-dark.vim ]]; then
    printf "source ~/verdurous/dark/vim.vim" > ~/.config/nvim/colors/verdurous-dark.vim
    printf "Adding skeleton ~/.config/nvim/colors/verdurous-dark.vim\n"
fi
