#!/bin/bash
cd "$(dirname "$0")"

git pull
cp ./dotfiles/.tmux.conf ~/.tmux.conf
cp ./dotfiles/.vimrc ~/.vimrc
cp ./dotfiles/.bash_conf.sh  ~/.bash_conf.sh
