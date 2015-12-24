#!/bin/sh
[ -e ~/.zshrc ] && rm ~/.zshrc
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
[ -e ~/.zshrc.alias ] && rm ~/.zshrc.alias
ln -s ~/dotfiles/zsh/.zshrc.alias ~/.zshrc.alias
[ -e ~/.zshrc.history ] && rm ~/.zshrc.history
ln -s ~/dotfiles/zsh/.zshrc.history ~/.zshrc.history
[ -e ~/.zshrc.color ] && rm ~/.zshrc.color
ln -s ~/dotfiles/zsh/.zshrc.color ~/.zshrc.color
[ -e ~/.zshrc.prompt ] && rm ~/.zshrc.prompt
ln -s ~/dotfiles/zsh/.zshrc.prompt ~/.zshrc.prompt
