#!/bin/sh
cp -r ~/.config/nvim ~/.config/nvim.old 2>/dev/null
rm -fr ~/.config/nvim 2>/dev/null
git clone https://github.com/XsErG/vimfiles ~/.config/nvim
