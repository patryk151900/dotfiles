#!/bin/bash

# get path to itself
SCRIPT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/$(basename "${BASH_SOURCE[0]}")"
SCRIPT_PATH=$(dirname $SCRIPT)

# vim
ln -s $SCRIPT_PATH/.vim .vim
ln -s $SCRIPT_PATH/.vimrc .vimrc

# tmux
ln -s $SCRIPT_PATH/.tmux.conf .tmux.conf

# bashrc
ln -s $SCRIPT_PATH/.bashrc_virtual_ubuntu_work .bashrc

# clone vundle if not yet exist
git clone https://github.com/VundleVim/Vundle.vim .vim/bundle/vundle

