# Misc, short
:set cc=80			- inserts vertical color column
:help colorcolumn	- see how to change color
gF					- open file under cursor
Ctrl+R "			- paste to vim command line
:<, >s/^..//		- deleted first 2 chars in each line in v-block
/,$s/<find>/<replace>/gci	- search/replace from cursor, confirmation, match case
bufdo bd			- close all buffers
:echo @%			- current file path
:read !find <dir>	- insert output of the find commnad to the current buffer
:set ft?			- read detected file type

# config files
~/.vimrc
~/.vim/startup/functions.vim
~/.vim/startup/mappings.vim
~/.vim/startup/settings.vim

# greping files
* grep				- find files
* copen, cclose		- open searched files
* cn, cp			- next, previous

# compiling files
- see ~/.vim/startup/mappings.vim
	F8					:make run<CR>
	F9					:make clean<CR>
	F10					:make<CR>				- in order to use quickfix
	F11					:make test<CR>
	F12					:make tests<CR>
- quickfix
	:copen				open qf, open prior to compilation
	:ccl				close qf

# autocompletion
* Ctrl+p or Ctrl+n in insert mode, hit again to loop over the list
* Ctrl+x for autocompletion submode
	* ] for tag
	* f for file
	* etc.

# window operations
* C-W			window prefix
* C-Ws			horizontal split
* C-Wv			vertical split
* C-Whjkl		navigation

# vimdiff comparing files
* diffthis		on file to mark file for diff, the same on anoter file
* diffoff		to end diff
* dif			diffupdate - to refresh diff
* [c			previous change
* ]c			next change
* do			diffobtain - to pull the change
* dp			diffput - to put the changes

# spellcheck
* :set spell spelllang=en_us
* :setlocal spell spelllang=en_us		- only current buffer
* :setlocal spell! spelllang=en_us		- toggle
* :set nospell							- switch off
* ]s									- next misspell
* [s									- previous missspell
* z=									- show suggestion

# plugins short manual

## DirDiff - diffing files in folders
:DirDiff <dir1> <dir2>

## ctags
install ctags by: sudo apt-get install exuberant-ctags

### ctags tags generation
* go into poject root dir
* ctags -R .
* <cursor on tag> + Ctrl+]		- jump to tag definition
* Ctrl+T				- jump back
* vim loops for tags file pointed by tags variable, e.g. set tags=./tags;

## ctrlp
* help ctrl-commands	- for help (also try :help ctrl-<TAB> for other options
* c+p			- show window
* c+f/b			- cycle through mode
* c+j/k			- select searched file

## NerdTree
* F3			- toggle NT panel
* ?			- display help
* o			- open file
* i			- show hidden

## Ack and ack
* the plugin calls: ack-grep -s -H --nogroup --nocolor --column <what comes after Ack>
* Ack --vim <text>	- searches in .vim files
* Ack --cc <text>	- searches in .c .h .xs
* Ack --cpp <text>	- searches in .cpp .cc .cxx .m .hpp .hh .h .hxx
* see ack documentation: http://beyondgrep.com/documentation/
* on ubuntu ack is installed as ack-grep (sudo apt-get install ack-grep)
* add: alias ack='ack-grep' to .bashrc
* ack --help types

## Vundle
PluginInstall		- installs a plugin when added to .vimrc file

# hints, tips, troubleshooting

## powerline font configuration
* when accessed Vim via putty there might be some strange characters visible
* make sure putty is properly configured
* make sure Settings->Window->Translation encoding is set to UTF-8
* make sure Settings->Appearance->Font change to one of the Powerline fonts (installed on Putty host machine)

## command-t.vim problem: Expected version: [unknown]-p[unknown]
* go to command-t plugin dir in vim
* make sure metadata.rb file is there, it should contain the same ruby version and vim uses (system ruby)
* in case the file is not there type:
* ruby extconf.rb && make

# installation
* clone dot files repo: git://github/patryk151900/dotfiles
* link .vim and .vimrc to home: ln -s repos/dotfiles/.vim .vim
* clone vundle to .vim/bundle/vundle
* open vim and call :PluginInstall
* clone powerline fonts and call sudo install.sh
* in case of putty make sure putty host has powerline fonts installed
* check with Character Map if fonts/symbols are installed - check in common -> A0E1 for line number symbol
* in order to see airline symbols in console vim set the right font in terminal settings - from this time you should see new symbols in vim
* do not configure symbols in .vimrc - this is necessary only if you like to replace default symbols

# vim compilation from scratch
* sudo apt-get install ruby-dev python-dev
* git clone https://github.com/vim/vim.git
* ./configure --disable-nls --enable-multibyte --with-tlib=ncurses --enable-pythoninterp --enable-rubyinterp --with-features=huge --with-python-config-dir=/usr/lib/python2.7/config-i386-linux-gnu
* hint: path to python config dir is necessary othervise will not compile
* make -j 3
* sudo make install
* hash vim						- when new vim is not visible

# quick getting of rubby and python supported version
sudo atp-get install vim-nox (this will add rubby support needed for LustyExplorer buffer)

# knowledge cheatsheets installation
git clone git@bitbucket.org:patryk151900/knowledge.git 
into .knowledge or make symbolic link to .knowledge from existing repo
<leader>hv	- opens vim cheatsheet
<leader>hl	- opens linux cheatsheet
<leader>hg	- opens git cheatsheet

