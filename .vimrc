set nocompatible
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"plugins managed by vundle
Plugin 'vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar' "right side variables, functions navigator
Plugin 'will133/vim-dirdiff'
Plugin 'mileszs/ack.vim'
Plugin 'rhysd/vim-clang-format'
Plugin 'mrtazz/DoxygenToolkit.vim'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'Lokaltog/vim-powerline'
"Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'wincent/command-t'
Plugin 'sjbach/lusty'

"============== Filetype stuff ===============
filetype plugin on
filetype indent on

"============== Script configs ===============
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

" Load custom settings
source ~/.vim/startup/color.vim
source ~/.vim/startup/functions.vim
source ~/.vim/startup/mappings.vim
source ~/.vim/startup/settings.vim
