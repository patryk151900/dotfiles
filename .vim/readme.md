# config files
~/.vimrc
~/.vim/startup/functions.vim
~/.vim/startup/mappings.vim
~/.vim/startup/settings.vim

# Misc, short
vim -u NONE			- start vim with no .vimrc
vim -u .vimrc1		- start vim with different .vimrc file
echo 'text' | vim - - edit stream / pipe redirection
:set hlsearch!		- enables highlight for searched tags
:nohighlight		- switches off current highlight
:set cc=80			- inserts vertical color column
:help colorcolumn	- see how to change color
gF					- open file under cursor
gv					- restore last visual selection
gq					- reorganize visually selected text to stick 80 lines
g Ctrl g			- display char count in v mode
Ctrl+R "			- paste to vim command line
:<, >s/^..//		- deleted first 2 chars in each line in v-block
/,$s/<find>/<replace>/gci	- search/replace from cursor, confirmation, match case
/text1\|text2\		- search for text1 and text2 at the same time
bufdo bd			- close all buffers
:echo @%			- current file path
:read !find <dir>	- insert output of the find commnad to the current buffer
:put= printf('0x%x', 255) - insert output of the find commnad to the current buffer
:set ft?			- read detected file type
:cexpr system('ls -ahl') | copen	- open command output in quickfix
:reg				- show registers
:h feature-list		- display feature list vim is comiled with

# check current rc file
echo $MYVIMRC

# dos/unix conversion
- to unix
	:e ++ff=dos
	:setlocal ff=unix
	:w
- to dos
	:e ++ff=dos
	:w

# replace newline with comma
:%s/\n/,/g

# execute command on each ocurracne of word
:g/^word \d:/{COMMANDS}

# delete lines matching
:%g/pattern/d

# leave only lines matching
:%g!/pattern/d

:let i = 1 | g/^Level \d:/s/^text/text\=printf("%02d ", i)/ | let i = i+1

# regex, search, match
\v, meaning that in the pattern after it all ASCII characters except '0'-'9', 'a'-'z', 'A'-'Z' and '_' have a special meaning

/| *[-+][0-9] *|$			- search for |   +1 | where +- is optional

# regex multiline non greedy search - .\{-}
/first\_.\{-}last

# remove trailing spaces
s/\v(.{-}) *$/\1/			- remove trailing spaces

# hex to decimal, decimal to hex
:echo 0x26					- will display 38
:echo printf("%d", 0x26)	- displays 38
:echo printf("%x", 38)		- displays 26

# grepping files
	:vimgrep - internal grep, slower, works with quickfix
	:lgrep - works with location list
	:grep - external grep, quicker, does not work with quickfix
	:vimgrep pattern **
	:vimgrep pattern **/*.c
	:vimgrep -R pattern *.c
	:grep -rl . --include=*.py -e "text"
																   - search text in all py files recursively,
																	 list file names only
	:grep -rnw . --include=*.py -e "text"
																   - search text in all py files recursively,
																	 list files, with line nuber and text
	grep				- find files
	grep -s				- find files, supress error messages
- search pattern_to_search in all c files located in the current directory
	grep -lr --include=*.{c,h} pattern_to_search .
	copen, cclose		- open searched files
	cn, cp			- next, previous



# compiling files
- see ~/.vim/startup/mappings.vim
	F8					:make run<CR>
	F9					:make clean<CR>
	F10					:make<CR>				- in order to use quickfix
	F11					:make test_single<CR>
	F12					:make test_all<CR>
- quickfix
	:copen				open qf, open prior to compilation
	:ccl				close qf

# autocompletion
- Ctrl+p or Ctrl+n in insert mode, hit again to loop over the list
- Ctrl+x for autocompletion submode
	- ] for tag
	- f for file
	- etc.
 2018-07-10 09:12:15.620396 |  3 | 928| 7|10177|        | -121.7 |    |        | -15 | Y |  QPSK |   | 2 |  46 |  47 | N |    |    72 |  |       |   |                  |                  | DTX|       7 |        |        |

# window operations
- C-W			window prefix
- C-Ws			horizontal split
- C-Wv			vertical split
- C-Whjkl		navigation

# vimdiff comparing files
- diffthis		on file to mark file for diff,
				the same on anoter file
- diffoff		to end diff
- set scrollbind=on			binds scrolling
- dif			diffupdate - to refresh diff
- [c			previous change
- ]c			next change
- do			diffobtain - to pull the change
- dp			diffput - to put the changes

# spellcheck
- :set spell spelllang=en_us
- :setlocal spell spelllang=en_us		- only current buffer
- :setlocal spell! spelllang=en_us		- toggle
- :set nospell							- switch off
- ]s									- next misspell
- [s									- previous missspell
- z=									- show suggestion

# cscope
- to set vim as main editor set env variable
	export CSCOPE_EDITOR=vim
- run sc from vim
	:cs help							- shows handy help
	cscope -CRb							- create db file cscope.out
	:cs add cscope.out					- connect to cscope db file
	:cs reset							- update db after change
	:cs show							- show connected files
	:cs kill <db id>					- close connection
	:cs find s <symbol to find> 
- other way to build out file (default files + e.g. sig files)
	find . -iname '*.c' -o -iname '*.cpp' -o -iname '*.h' -o -iname '*.hpp' -o -iname '*.sig' > cscope.files
	find . -iname '*.c' -o -iname -o -iname '*.h' -o -iname '*.l' -o -iname '*.y' -o -iname '*.-o -iname '*.sig' > cscope.files
	cscope -bC -i cscope.files

# special characters in vim
- :digraph				- check what are special chars
- Insert mode + ^V172	- will insert char under 172 number

# color tips¬
- to set/fix parenthesis matching - add this to config file¬
›   hi MatchParen guifg=#000000 ctermfg=0 guibg=#FD971F ctermbg=green¬
- runtime syntax/colortest.vim - check available colors¬
- runtime syntax/colortest.vim - check available colors¬

# color tips¬
- to set/fix parenthesis matching - add this to config file¬
›   hi MatchParen guifg=#000000 ctermfg=0 guibg=#FD971F ctermbg=green¬
- runtime syntax/colortest.vim - check available colors¬
- to set/fix parenthesis matching - add this to config file¬
›   hi MatchParen guifg=#000000 ctermfg=0 guibg=#FD971F ctermbg=green¬
- runtime syntax/colortest.vim - check available colors¬

# set syntax for a file with odd/no extension
	:set syntax=sh
	:set syntax=html
- 
# plugins short manual

## DoxygenToolkit
	:Dox			- function comment or brief for others
					  leader + d for shortcut
	:DoxAuthor		- adds file header
	:DoxLic			- adds licence file

## DirDiff - diffing files in folders
:DirDiff <dir1> <dir2>

## ctags
install ctags by: sudo apt-get install exuberant-ctags

### ctags tags generation
- go into poject root dir
- ctags -R .
- <cursor on tag> + Ctrl+]		- jump to tag definition
- Ctrl+T				- jump back
- vim loops for tags file pointed by tags variable, e.g. set tags=./tags;

## ctrlp
- help ctrl-commands	- for help (also try :help ctrl-<TAB> for other options
- c+p			- show window
- c+f/b			- cycle through mode
- c+j/k			- select searched file

## NerdTree
- F3			- toggle NT panel
- ?			- display help
- o			- open file
- i			- show hidden

## Ack and ack
- the plugin calls: ack-grep -s -H --nogroup --nocolor --column <what comes after Ack>
- Ack --vim <text>	- searches in .vim files
- Ack --cc <text>	- searches in .c .h .xs
- Ack --cpp <text>	- searches in .cpp .cc .cxx .m .hpp .hh .h .hxx
- see ack documentation: http://beyondgrep.com/documentation/
- on ubuntu ack is installed as ack-grep (sudo apt-get install ack-grep)
- add: alias ack='ack-grep' to .bashrc
- ack --help types

## Grep in Vim
grep 'text' **/*.c							- search in all c files in all dirs

## Vundle
PluginInstall		- installs a plugin when added to .vimrc file

# hints, tips, troubleshooting

## NERDTree error on toggle - no strchars function
- strchars function is available only from vim 7.3
- workaround:
	- edit .vim/bundle/nerdtree/lib/nerdtree/ui.vim
	- replace line containing strchars with the following line:
		let leadChars = strlen(substitute(copy(a:line[0:numLeadBytes-1]), '.', 'x', 'g'))

## when F1-F4 cause case toggle under Putty
- set Putty->Settings->Terminal->Keyboard->Xterm R6

## powerline font configuration
- when accessed Vim via Putty there might be some strange characters visible
- make sure putty is properly configured
- make sure Settings->Window->Translation encoding is set to UTF-8
- make sure Settings->Appearance->Font change to one of the Powerline fonts (installed on Putty host machine)

## command-t.vim problem: Expected version: [unknown]-p[unknown]
- go to command-t plugin dir in vim
- make sure metadata.rb file is there, it should contain the same ruby version and vim uses (system ruby)
- in case the file is not there type:
- ruby extconf.rb && make

## vim-clang-format
- install clang-format by
	sudo apt-get install clang-format-3.8		- check the latest avalilable version
- :ClangFormat or leader + f to format code
- format rules kept in settings.vim

## python related plugins
- install:
	- sudo pip install flake8
	- sudo pip install yapf
- leader f to format python files
- flake8 is run on python files on write

# installation
- clone dot files repo: git://github/patryk151900/dotfiles
- link .vim and .vimrc to home: ln -s repos/dotfiles/.vim .vim
- clone vundle to .vim/bundle/vundle
- open vim and call :PluginInstall
- clone powerline fonts and call sudo install.sh
- in case of putty make sure putty host has powerline fonts installed
- check with Character Map if fonts/symbols are installed - check in common -> A0E1 for line number symbol
- in order to see airline symbols in console vim set the right font in terminal settings - from this time you should see new symbols in vim
- do not configure symbols in .vimrc - this is necessary only if you like to replace default symbolsnsta

# installation on Windows
- clone dotfiles repo:
	mklink /D %HOMEPATH%\.vim\startup c:\repos\dotfiles\.vim\startup
	mklink /D %HOMEPATH%\.vim\colors c:\repos\dotfiles\.vim\colors
	mklink /D %HOMEPATH%\.knowledge c:\repos\knowledge
	mklink %HOMEPATH%\.vim\readme.md c:\repos\dotfiles\.vim\readme.md
	mklink %HOMEPATH%\_vimrc c:\repos\dotfiles\.vimrc
- vim on Windows searches vimrc files in (more on this in :help vimrc):
		Unix		$HOME/.vimrc or $HOME/.vim/vimrc
		MS-Windows	$HOME/_vimrc, $HOME/vimfiles/vimrc or $VIM/_vimrc
- so make sure you set HOME to your user profile:
	printenv HOME
	setx HOME "%USERPROFILE%"
- (needed by vundle) in git folder\cmd add curl.cmd with content:
	@rem Do not use "echo off" to not affect any child calls.
	@setlocal

	@rem Get the abolute path to the parent directory, which is assumed to be the
	@rem Git installation root.
	@for /F "delims=" %%I in ("%~dp0..") do @set git_install_root=%%~fI
	@set PATH=%git_install_root%\bin;%git_install_root%\mingw\bin;%git_install_root%\mingw64\bin;%PATH%
	@rem !!!!!!! For 64bit msysgit, replace 'mingw' above with 'mingw64' !!!!!!!

	@if not exist "%HOME%" @set HOME=%HOMEDRIVE%%HOMEPATH%
	@if not exist "%HOME%" @set HOME=%USERPROFILE%

	@curl.exe %*
- run vim and run PluginInstall

# vim compilation from scratch
- sudo apt-get install ruby-dev python-dev
- git clone https://github.com/vim/vim.git
- ./configure --disable-nls --enable-multibyte --with-tlib=ncurses --enable-pythoninterp --enable-rubyinterp --with-features=huge --with-python-config-dir=/usr/lib/python2.7/config-i386-linux-gnu
- hint: path to python config dir is necessary othervise will not compile
- make -j 3
- sudo make install
- hash vim						- when new vim is not visible

# quick getting of rubby and python supported version
sudo atp-get install vim-nox (this will add rubby support needed for LustyExplorer buffer)

# knowledge cheatsheets installation
git clone git@bitbucket.org:patryk151900/knowledge.git
into .knowledge or make symbolic link to .knowledge from existing repo
<leader>hv	- opens vim cheatsheet
<leader>hl	- opens linux cheatsheet
<leader>hg	- opens git cheatsheet

