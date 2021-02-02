set nocompatible
" this is for Win as default is vimfiles and we want to use .vim
" for Linux/Max it should change nothing as the path will already be added
set rtp+=~/.vim

" run vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" vundle managed plugins

" just provides airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
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
" buffer/file navigation
Plugin 'kien/ctrlp.vim'

" rarely used
" Plugin 'wincent/command-t'
" Plugin 'sjbach/lusty'

"============== Filetype stuff ===============
filetype plugin on
filetype indent on

"============== Script configs ===============

" Load custom settings
source ~/.vim/startup/color.vim
source ~/.vim/startup/functions.vim
source ~/.vim/startup/mappings.vim
source ~/.vim/startup/settings.vim
