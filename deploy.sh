#!/bin/bash

# This deploy script is fairly specialized for my usage. You may wish to edit it
# for your own use.

# Alacritty.
mkdir -p ~/.config/alacritty/colors
current_target=~/.config/alacritty/colors/verdurous-dark.yml
if [[ ! -f ${current_target} ]]; then
    printf "import:\n  - ${PWD}/themes/alacritty/verdurous-dark.yml\n" > ${current_target}
    printf "Creating skeleton ${current_target}\n"
else
    printf "Skipping skeleton ${current_target}\n"
fi
current_target=~/.config/alacritty/colors/verdurous-darker.yml
if [[ ! -f ${current_target} ]]; then
    printf "import:\n  - ${PWD}/themes/alacritty/verdurous-darker.yml\n" > ${current_target}
    printf "Creating skeleton ${current_target}\n"
else
    printf "Skipping skeleton ${current_target}\n"
fi
current_target=~/.config/alacritty/colors/verdurous-light.yml
if [[ ! -f ${current_target} ]]; then
    printf "import:\n  - ${PWD}/themes/alacritty/verdurous-light.yml\n" > ${current_target}
    printf "Creating skeleton ${current_target}\n"
else
    printf "Skipping skeleton ${current_target}\n"
fi
# Neovim.
mkdir -p ~/.config/nvim/colors
current_target=~/.config/nvim/colors/verdurous-dark.vim
if [[ ! -f ${current_target} ]]; then
    printf "source ${PWD}/themes/vim/verdurous-dark.vim\n" > ${current_target}
    printf "Creating skeleton ${current_target}\n"
else
    printf "Skipping skeleton ${current_target}\n"
fi
# Waybar.
mkdir -p ~/.config/waybar/colors
current_target=~/.config/waybar/colors/verdurous-darker.css
if [[ ! -f ${current_target} ]]; then
    printf "@import \"${PWD}/themes/waybar/verdurous-darker.css\";\n" > ${current_target}
    printf "Creating skeleton ${current_target}\n"
else
    printf "Skipping skeleton ${current_target}\n"
fi
