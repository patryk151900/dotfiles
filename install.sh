#!/bin/bash

# This script installs dotfiles in user home directory
#
# !!! It must be run from dotfiles directory !!!
#

# get path to itself
SCRIPT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/$(basename "${BASH_SOURCE[0]}")"
SCRIPT_PATH=$(dirname $SCRIPT)

# store timestamp based sufix for backed up files
TIMESTAMP="$(date +%s)"

# brief: backs up a file; extends the name with timestamp suffix
# parameters:
#     $1 - file to back up
function backup_orig_file {
	if [ -e $1 ]
	then
		echo "...target file ($1) already exist, backing up..."
		TARGET=$1_orig_$TIMESTAMP 
		echo "...moving $1 to $TARGET"
		mv $1 $TARGET 
	fi
}

# brief: installs the file as symbolic link; backs up original file
# parameters:
#    $1 - target directory
#    $2 - target file name
#    $3 - source directory
#    $4 - source file name (relative to script path == main of dotfiles repo)
function install_file {
	echo "Installing $2..."
	if [ ! -L $1/$2 ]
	then 
		echo "...symbolic link does not exist yet, creating..."
		if [ ! -e $3/$4 ]
		then
			echo "...ERROR: source file or directory does not exist!!!"
		else		
			backup_orig_file $1/$2
			ln -s $3/$4 $1/$2
			echo "...created:"
			ls -al $1/$2
		fi
	else
		echo "...symbolic link already exists and will not be changed:"
		ls -al $1/$2
	fi
}

# do actual installation
echo "Starting installation of dot files..."

# vim
install_file ~ .vim $SCRIPT_PATH .vim
install_file ~ .vimrc $SCRIPT_PATH .vimrc

# tmux
install_file ~ .tmux.conf $SCRIPT_PATH .tmux.conf

# bashrc
install_file ~ .bashrc $SCRIPT_PATH .bashrc_ubuntu_raspbian

# install bash aliasses
install_file ~ .bash_aliases $SCRIPT_PATH .bash_aliases

# install .knowledge repository
install_file ~ .knowledge ~ repos/knowledge


# clone vundle for vim purpose
VUNDLE=~/.vim/bundle/vundle
echo "Clonning vundle repo into $vundle..."
if [ -e $VUNDLE ]
	then echo "...vundle already cloned (at least directory exists)"
else
	git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/vundle
	echo "...cloned"
	echo "...open vim and type :PluginInstall"
fi

echo "Installation completed!"
