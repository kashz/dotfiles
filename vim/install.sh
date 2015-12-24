#! /bin/sh
[ -e ~/.vimrc ] && rm ~/.vimrc
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc
[ -e ~/.vim ] &&  rm -r ~/.vim
ln -s ~/dotfiles/vim/.vim ~/.vim
