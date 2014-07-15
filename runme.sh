#!/bin/bash
# [refence](https://github.com/lepture/dotfiles/blob/master/bootstrap.sh)

cd $(dirname "$0")

link() {
    if [ ! -h $HOME/.$1 ]; then
       ln -s "`pwd`/$1" "$HOME/.$1"
    fi
}


echo "init vim >>>"
if [ ! -d vim/bundle/vundle ]; then
    git clone https://github.com/gmarik/vundle.git vim/bundle/vundle
fi
link vim
link vimrc
vim +BundleInstall +qall

#echo "init python env ..."
#if which pip > /dev/null; then
#	echo "pip already installed"
#else
#	sudo easy_install pip
#fi
#sudo pip install flake8

echo "init shell >>>"
link gitconfig
link bashrc
link bpython
link tmux.conf

#link zshrc
#if [ ! -d ~/.oh-my-zsh ]; then
#	git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
#fi
#if which zsh > /dev/null; then
#	echo "chsh -s `which zsh`"
#else
#	echo "install zsh"
#fi
