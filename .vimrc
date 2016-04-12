set nocompatible
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"plugins managed by vundle
Plugin 'vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-easymotion'
"Plugin 'Lokaltog/vim-powerline'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'wincent/command-t'
Plugin 'sjbach/lusty'
Plugin 'majutsushi/tagbar'

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
