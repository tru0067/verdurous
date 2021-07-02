#!/bin/bash

# This deploy script is fairly specialized for my usage. You may wish to edit it
# for your own use.

mkdir -p ~/.config/nvim/colors
current_target=~/.config/nvim/colors/verdurous-dark.vim
if [[ ! -f ${current_target} ]]; then
    printf "source ${PWD}/dark/vim.vim\n" > ${current_target}
    printf "Creating skeleton ${current_target}\n"
else
    printf "Skipping skeleton ${current_target}\n"
fi
current_target=~/.config/nvim/colors/verdurous-light.vim
if [[ ! -f ${current_target} ]]; then
    printf "source ${PWD}/light/vim.vim\n" > ${current_target}
    printf "Creating skeleton ${current_target}\n"
else
    printf "Skipping skeleton ${current_target}\n"
fi
mkdir -p ~/.config/alacritty
current_target=~/.config/alacritty/verdurous-dark.yml
if [[ ! -f ${current_target} ]]; then
    printf "import:\n  - ${PWD}/verdurous/dark/alacritty.yml\n" > ${current_target}
    printf "Creating skeleton ${current_target}\n"
else
    printf "Skipping skeleton ${current_target}\n"
fi
current_target=~/.config/alacritty/verdurous-light.yml
if [[ ! -f ${current_target} ]]; then
    printf "import:\n  - ${PWD}/verdurous/light/alacritty.yml\n" > ${current_target}
    printf "Creating skeleton ${current_target}\n"
else
    printf "Skipping skeleton ${current_target}\n"
fi
