#!/bin/bash

mv ../config ~/.config/nvim

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

wait $BACK_PID

nvim --headless +so +PackerSync
