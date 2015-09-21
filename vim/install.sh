#!/bin/sh
#
# Vim
#
# This installs vim plugins

brew install ctags

if [ ! -e $HOME/.vim/bundle/Vundle.vim ]; then
  git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi
vim -u $HOME/.vimrc.bundles +PluginInstall +PluginClean! +qa

exit 0
