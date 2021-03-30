#! /bin/bash

DOTTIES=$(pwd)

# Vim
VIMDIR="$HOME/.config/nvim"
if [ ! -d "$VIMDIR" ]; then
    mkdir "$VIMDIR"
fi
ln -s "$DOTTIES/nvimrc" "$VIMDIR/init.vim"

# Git
ln -s "$DOTTIES/gitconfig" "$HOME/.gitconfig"

# Zsh
ln -s "$DOTTIES/zshrc" "$HOME/.zshrc"

