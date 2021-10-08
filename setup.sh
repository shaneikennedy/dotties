#! /bin/bash

DOTTIES=$(pwd)

# Vim
ln -s "$DOTTIES/vimrc" "$HOME/.vimrc"

# Git
ln -s "$DOTTIES/gitconfig" "$HOME/.gitconfig"

# Zsh
ln -s "$DOTTIES/zshrc" "$HOME/.zshrc"

