#!/bin/bash
cd "$(dirname "$0")"

cp ~/.tmux.conf ./dotfiles/.tmux.conf
cp ~/.vimrc ./dotfiles/.vimrc
cp ~/.zshrc ./dotfiles/.zshrc

git add .
git commit -m "update"
git push

