#!/bin/bash

# This deploy script is fairly specialized for my usage. You may wish to edit it
# for your own use.

skeleton() {
    s=${1}  # Source string.
    t=${2}  # Target file.
    mkdir -p $(dirname ${t})
    if [[ ! -f ${t} ]]; then
        printf "${s}\n" > ${t}
        printf "Creating skeleton ${t}\n"
    else
        printf "Skipping skeleton ${t}\n"
    fi
}

# Alacritty.
skeleton "import:\n  - ${PWD}/themes/alacritty/verdurous-dark.yml" ~/.config/alacritty/colors/verdurous-dark.yml
skeleton "import:\n  - ${PWD}/themes/alacritty/verdurous-darker.yml" ~/.config/alacritty/colors/verdurous-darker.yml
skeleton "import:\n  - ${PWD}/themes/alacritty/verdurous-light.yml" ~/.config/alacritty/colors/verdurous-light.yml
# Neovim.
skeleton "source ${PWD}/themes/vim/verdurous-darker.vim" ~/.config/nvim/colors/verdurous-darker.vim
# Waybar.
skeleton "@import \"${PWD}/themes/waybar/verdurous-darker.css\";" ~/.config/waybar/colors/verdurous-darker.css
# Zathura.
skeleton "include ${PWD}/themes/zathura/verdurous-darker" ~/.config/zathura/colors/verdurous-darker
