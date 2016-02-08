#!/bin/bash
git pull
cd "$(dirname "$0")"

cp ~/.tmux.conf ./dotfiles/.tmux.conf
cp ~/.vimrc ./dotfiles/.vimrc
cp ~/.bash_conf.sh ./dotfiles/.bash_conf.sh

git add .
git commit -m "update"
git push

