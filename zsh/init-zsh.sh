#!/bin/bash
# Daniel Gisolfi

# This is a script to install my oh-my-zshell setup as
# it exists on my host machine

# install the pure theme for oh-my-zshell
mkdir ~/.zshell
cd ~/.zshell

# Get both theme files from the repo
wget https://github.com/sindresorhus/pure/blob/master/pure.zsh
wget https://github.com/sindresorhus/pure/blob/master/async.zsh

# Create Symlinks for the files
ln -s "$PWD/pure.zsh" /usr/local/share/zsh/site-functions/prompt_pure_setup
ln -s "$PWD/async.zsh" /usr/local/share/zsh/site-functions/async

# Finally move the vimrc into its proper home and source it
cp zshrc.symlink ~/.zshrc
source ~/.zshrc
