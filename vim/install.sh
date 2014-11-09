#!/bin/sh
#
# Vim
#
# This installs vim plugins

function compile_command_t() {
  cd $HOME/.vim/bundle/command-t/ruby/command-t
  ruby extconf.rb
  make
}

if [ ! -e $HOME/.vim/bundle/Vundle.vim ]; then
  git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi
vim -u $HOME/.vimrc.bundles +PluginInstall +PluginClean! +qa

compile_command_t

exit 0
