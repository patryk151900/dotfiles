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

# hints, tips, troubleshooting

## powerline font configuration
when accessed Vim via putty there might be some strange characters visible
make sure putty is properly configured
make sure Settings->Window->Translation encoding is set to UTF-8
make sure Settings->Appearance->Font change to one of the Powerline fonts (installed on Putty host machine)

