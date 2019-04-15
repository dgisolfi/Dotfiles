#!/bin/bash
# Daniel Gisolfi

# This is a script to install my vim setup as
# it exists on my host machine

# setup path pathogen package manager for vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install the nerdtree package from source
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree


# Finally move the vimrc into its proper home and source it
cp vimrc.symlink ~/.vimrc
source ~/.vimrc
