#! /bin/bash

DOTTIES=$(pwd)

# Vim
VIMDIR="$HOME/.vim"
if [ ! -d "$VIMDIR" ]; then
    mkdir "$VIMDIR"
fi
ln -s "$DOTTIES/vimrc" "$VIMDIR/vimrc"

# Git
ln -s "$DOTTIES/gitconfig" "$HOME/.gitconfig"

# Zsh
ln -s "$DOTTIES/zshrc" "$HOME/.zshrc"

