#! /usr/local/bin/bash

mkdir ~/devenvbkp

cp ~/.vimrc ~/devenvbkp/vimrc
cp ~/.bashrc ~/devenvbkp/bashrc
cp ~/.inputrc ~/devenvbkp/inputrc
cp ~/.tmux.conf ~/devenvbkp/tmux.conf
cp -r ~/.vim ~/devenvbkp/vim

cp vimrc ~/.vimrc
cp bashrc ~/.bashrc
cp inputrc ~/.inputrc
cp tmux.conf ~/.tmux.conf
cp -r vim ~/.vim
