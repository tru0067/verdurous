#!/bin/bash

mkdir -p ~/.config/nvim/colors
if [[ ! -f ~/.config/nvim/colors/verdurous.vim ]]; then
    ln --symbolic ~/verdurous/verdurous.vim ~/.config/nvim/colors/verdurous.vim
fi

