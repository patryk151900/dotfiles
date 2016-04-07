# installation
clone dot files repo: git://github/patryk151900/dotfiles
link .vim and .vimrc to home: ln -s repos/dotfiles/.vim .vim
clone vundle to .vim/bundle/vundle
open vim and call :PluginInstall
clone powerline fonts and call sudo install.sh
in case of putty make sure putty host has powerline fonts installed
check with Character Map if fonts/symbols are installed - check in common -> A0E1 for line number symbol
in order to see airline symbols in console vim set the right font in terminal settings - from this time you should see new symbols in vim
do not configure symnols in .vimrc - this is necessary only if you like to replace default symbols
install ctags by: sudo apt-get install exuberant-ctags

# ctags tags generation
go into poject root dir
ctags -R .
<cursor on tag> + Ctrl+]		- jump to tag definition
Ctrl+T							- jump back
vim loops for tags file pointed by tags variable, e.g. set tags=./tags;

# vim compilation from scratch
sudo apt-get install ruby-dev python-dev
git clone https://github.com/vim/vim.git
./configure --disable-nls --enable-multibyte --with-tlib=ncurses --enable-pythoninterp --enable-rubyinterp --with-features=huge --with-python-config-dir=/usr/lib/python2.7/config-i386-linux-gnu
hint: path to python config dir is necessary othervise will not compile
make -j 3
sudo make install
hash vim						- when new vim is not visible

# quick getting of rubby and python supported version
sudo atp-get install vim-nox (this will add rubby support needed for LustyExplorer buffer)

# greping files
grep			- find files
copen, cclose	- open searched files
cn, cp			- next, previous

# plugins short manual

## ctrlp
help ctrl-commands	for help (also try :help ctrl-<TAB> for other options
c+p		show window
c+f/b	cycle through mode
c+j/k	select searched file

## NerdTree
F3	toggle NT panel
?	display help
o	open file
i	show hidden

## Ack and ack
the plugin calls: ack-grep -s -H --nogroup --nocolor --column <what comes after Ack>
Ack --vim <text>
Ack --cc <text>
on ubuntu ack is installed as ack-grep (sudo apt-get install ack-grep)
add: alias ack='ack-grep' to .bashrc
ack --help types

## Vundle
PluginInstall		- installs a plugin when added to .vimrc file

# hints, tips, troubleshooting

## powerline font configuration
when accessed Vim via putty there might be some strange characters visible
make sure putty is properly configured
make sure Settings->Window->Translation encoding is set to UTF-8
make sure Settings->Appearance->Font change to one of the Powerline fonts (installed on Putty host machine)

## command-t.vim problem: Expected version: [unknown]-p[unknown]
go to command-t plugin dir in vim
make sure metadata.rb file is there, it sholud contain the same ruby version and vim uses (system ruby)
in case the file is not there type:
ruby extconf.rb && make
