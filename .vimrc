set nocompatible
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" vundle managed plugins

" just provides airline
Plugin 'vim-airline'
" left side file explorer
Plugin 'scrooloose/nerdtree'
 "right side variables, functions navigator
Plugin 'majutsushi/tagbar'
" directory compare tool - a'la Araxis Merge, WinMerge
Plugin 'will133/vim-dirdiff'
" grep-ack search inside vim
Plugin 'mileszs/ack.vim'
" formating tool for C, C++
Plugin 'rhysd/vim-clang-format'
" doxygen snipets inserts
Plugin 'mrtazz/DoxygenToolkit.vim'
" yapf - code formatter for python (and not only)
Plugin 'mindriot101/vim-yapf'
" vim-flake8 - syntax checker for python
Plugin 'nvie/vim-flake8'
" syntastic - displays errors on signs column
Plugin 'scrooloose/syntastic'
" vim autocompletion, doc, etc.
Plugin 'davidhalter/jedi-vim'
" supertab - allows to use tab for completion - ??? to be checked if needed
Plugin 'ervandew/supertab'

" rarely used
Plugin 'kien/ctrlp.vim'
Plugin 'wincent/command-t'
Plugin 'sjbach/lusty'

"============== Filetype stuff ===============
filetype plugin on
filetype indent on

"============== Script configs ===============

" Load custom settings
source ~/.vim/startup/color.vim
source ~/.vim/startup/functions.vim
source ~/.vim/startup/mappings.vim
source ~/.vim/startup/settings.vim
