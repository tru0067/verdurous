#!/bin/bash

mkdir -p ~/.config/nvim/colors
if [[ ! -f ~/.config/nvim/colors/verdurous-dark.vim ]]; then
    printf "source ~/verdurous/dark/vim.vim" > ~/.config/nvim/colors/verdurous-dark.vim
    printf "Adding skeleton ~/.config/nvim/colors/verdurous-dark.vim\n"
fi
mkdir -p ~/.config/alacritty
if [[ ! -f ~/.config/alacritty/verdurous-dark.yml ]]; then
    printf "import:\n  - /home/tru0067/verdurous/dark/alacritty.yml\n" > ~/.config/alacritty/verdurous-dark.yml
    printf "Adding skeleton ~/.config/alacritty/verdurous-dark.yml\n"
fi
