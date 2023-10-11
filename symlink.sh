#!/bin/bash

echo "WARNING! THIS WILL OVERWRITE ALL YOUR EXISTING DOTFILES!"
echo "Please also ensure that this folder is located in $HOME/dotfiles"
echo "Are you sure you want to continue? (Y/n)"
read -r response
if [[ $response =~ ^([nN][oO]|[nN])$ ]]; then
    echo "Aborting..."
    exit 1
fi

# Create symlinks
echo "Symlinking awesome config..."
ln -sf "$HOME/dotfiles/awesome" "$HOME/.config/awesome"
echo "Symlinking picom config..."
ln -sf "$HOME/dotfiles/picom.conf" "$HOME/.config/picom.conf"

echo "Done!"
echo "More will be added soon..."
