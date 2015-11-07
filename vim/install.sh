#!/bin/sh
#
# Vim
#
# This installs vim plugins


if [ "$(uname -s)" == "Darwin" ]
then
  brew install ctags
else
  sudo apt-get install -y exuberant-ctags
fi


if [ ! -e $HOME/.vim/autoload/plug.vim ]; then
  curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

vim -u $HOME/.vimrc.bundles +PlugInstall +qa

exit 0
