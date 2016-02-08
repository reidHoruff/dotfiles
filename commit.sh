#!/bin/bash
git pull
cd "$(dirname "$0")"

cp ~/.tmux.conf ./dotfiles/.tmux.conf
cp ~/.vimrc ./dotfiles/.vimrc
cp ~/.bash_conf ./dotfiles/.bash_conf

git add .
git commit -m "update"
git push

