#!/bin/bash

rm .zshrc
rm .bashrc
rm .bash_profile
rm .vimrc
rm Brewfile

cwd=$(pwd)
cd ~
brew bundle dump
cd $cwd

cp ~/.zshrc .zshrc
cp ~/.vimrc .vimrc
cp ~/.bashrc .bashrc
cp ~/.bash_profile .bash_profile

git add .
git commit -m "Update to latest"
git push
