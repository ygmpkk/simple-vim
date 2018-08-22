#!/bin/bash

set -e

echo "Install koine vim"

DIR=~/.vim
if [ -d "$DIR" ]; then
  echo "backup..."
  mv -f ~/.vim ~/.vim.old
fi

echo "clone..."
git clone https://github.com/ygmpkk/simple-vim $DIR

echo "link vimrc..."
ln -sf ~/.vim/vimrc ~/.vimrc

echo "install plugins..." > ~/.vimprocess
vim -s ~/.vimprocess -c "PlugInstall" -c "q" -c "q"

echo "postinstall..."
rm -rf ~/.vimprocess

echo "done."
