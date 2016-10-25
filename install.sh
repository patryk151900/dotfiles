#!/bin/bash

# get path to itself
SCRIPT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/$(basename "${BASH_SOURCE[0]}")"
SCRIPT_PATH=$(dirname $SCRIPT)

# store timestamp based sufix for backed up files
TIMESTAMP="$(date +%s)"

# $1 - file to back up
function backup_orig_file {
	if [ -e $1 ]
		then
			echo "target file ($1) already exist, backing up..."
			TARGET=$1_orig_$TIMESTAMP 
			echo "moving $1 to $TARGET"
			mv $1 $TARGET 
	fi
}

# $1 - target directory
# $2 - target file name
# $3 - source file name (relative to script path == main of dotfiles repo)
function install_file {
	echo "Installing $2..."
	if [ ! -L $1/$2 ]
		then echo "symbolic link does not exist yet, creating"
		backup_orig_file $1/$2
		ln -s $SCRIPT_PATH/$3 $1/$2
	else
		echo "symbolic link already exist and will not be changed"
		ls -al $1/$2
	fi
}

echo "Starting installation of dot files..."

# vim
install_file ~ .vim .vim
install_file ~ .vimrc .vimrc

# tmux
install_file ~ .tmux.conf .tmux.conf

# bashrc
install_file ~ .bashrc .bashrc_virtual_ubuntu_work

# clone vundle
VUNDLE=~/.vim/bundle/vundle
echo "Clonning vundle repo into $vundle..."
if [ -e $VUNDLE ]
	then echo "vundle already cloned (at least directory exists)"
else
	git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/vundle
fi

echo "installation completed..."
