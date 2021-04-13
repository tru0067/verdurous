#!/bin/bash

mkdir -p ~/.config/nvim/colors
if [[ ! -f ~/.config/nvim/colors/verdurous-dark.vim ]]; then
    printf "source ~/verdurous/dark/vim.vim\n" > ~/.config/nvim/colors/verdurous-dark.vim
    printf "Adding skeleton ~/.config/nvim/colors/verdurous-dark.vim\n"
fi
mkdir -p ~/.config/alacritty
if [[ ! -f ~/.config/alacritty/verdurous-dark.yml ]]; then
    printf "import:\n  - /home/tru0067/verdurous/dark/alacritty.yml\n" > ~/.config/alacritty/verdurous-dark.yml
    printf "Adding skeleton ~/.config/alacritty/verdurous-dark.yml\n"
fi
if [[ ! -f ~/.config/alacritty/verdurous-light.yml ]]; then
    printf "import:\n  - /home/tru0067/verdurous/light/alacritty.yml\n" > ~/.config/alacritty/verdurous-light.yml
    printf "Adding skeleton ~/.config/alacritty/verdurous-light.yml\n"
fi
