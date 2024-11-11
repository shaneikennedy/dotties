#! /bin/bash

DOTTIES=$(pwd)

# Brew
ln -s "$DOTTIES/Brewfile" "$HOME/Brewfile"

# Git
ln -s "$DOTTIES/gitconfig" "$HOME/.gitconfig"

# Zsh
ln -s "$DOTTIES/zshrc" "$HOME/.zshrc"

git clone git@github.com:shaneikennedy/nvim.git ~/.config/nvim

echo "Now run brew bundle install and restart your shell"
