#!/bin/bash

rm -f ~/.config/nvim
mv ../config ~/.config/nvim

// Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

cd ~/.config/nvim

nvim ~/.config/nvim/lua/plugins.lua +so +PackerSync +qall

nvim
