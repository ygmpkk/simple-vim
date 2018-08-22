#!/bin/bash

set -e

echo "Install koine vim"

if [ -d "~/.vim" ]; then
  echo "backup..."
  mv -f ~/.vim ~/.vim.old
fi

echo "clone..."
git clone https://github.com/ygmpkk/simple-vim ~/.vim

echo "link vimrc..."
ln -sf ~/.vim/vimrc ~/.vimrc

echo "install plugins..." > ~/.vimprocess
vim -s ~/.vimprocess -c "PlugInstall" -c "q" -c "q"

echo "postinstall..."
rm -rf ~/.vimprocess

echo "done."
