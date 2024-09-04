#! /bin/bash

DOTTIES=$(pwd)

# Brew
ln -s "$DOTTIES/Brewfile" "$HOME/Brewfile"

# Git
ln -s "$DOTTIES/gitconfig" "$HOME/.gitconfig"

# Zsh
ln -s "$DOTTIES/zshrc" "$HOME/.zshrc"

echo "Now run brew bundle install and restart your shell"
