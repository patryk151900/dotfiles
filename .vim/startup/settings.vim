"============== General Settings ===============
set dict=/usr/share/dict/words
set cursorline
set showcmd
set ruler
set incsearch
set wildmenu
syntax enable
set synmaxcol=0
set term=xterm-256color

set display=uhex
set shortmess=aAIsT
set cmdheight=2
set nowrap
if &diff
	set wrap
endif
let &scrolloff=999-&scrolloff
set scrolloff=999
set ignorecase
set smartcase

set completeopt=menu
set mousemodel=popup
set backspace=2
set number
set relativenumber
set nocompatible



set enc=utf-8
set fillchars=vert:¦

set noexpandtab
set tabstop=4
set shiftwidth=4
"specific file settings
autocmd FileType python setl tabstop=4|setl shiftwidth=4|setl expandtab|setl colorcolumn=80
autocmd FileType c setl tabstop=8|setl shiftwidth=8|setl noexpandtab|setl colorcolumn=80
autocmd FileType cpp setl tabstop=8|setl shiftwidth=8|setl noexpandtab|setl colorcolumn=80
set foldcolumn=1
set cc=+1,+2

set linespace=0
set history=1000
set list listchars=tab:› ,trail:-,extends:>,precedes:<,eol:¬

set laststatus=2
set ffs=unix
set mouse=a
set visualbell
set ttym=xterm2

set wrap
set hidden
set tags=./tags;tags
"set undo file in oder to avoid loosing undo history when switching buffers
set undofile
set undodir=$HOME/.vim/undo

set undolevels=1000
set undoreload=10000

if version > 720
	set undofile
	set undodir=~/vimundo/
endif

"if exists('$TMUX')
"  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
"else
"  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"endif

set guifont=Droid\ Sans\ Mono\ for\ Powerline:10
let g:Powerline_symbols = 'fancy'
"this is for powerline
"call Pl#Theme#InsertSegment('ws_marker', 'after', 'lineinfo')
let g:NERDTreeWinSize = 30
"airline settings
let g:airline_powerline_fonts = 1
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline_section_z = airline#section#create(['%3p%% ', g:airline_symbols.linenr, '(%L) %l', ':%2c ', '0x%02B'])
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#show_close_button = 1
let g:airline#extensions#tabline#close_symbol = 'X'
let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
"ctrlp settings
let g:ctrlp_working_path_mode = '~'
let g:ctrlp_show_hidden = 1

"vim-clang-format settings
" as close as possible to Linux checkpatch.pl
let g:clang_format#style_options = {
			\ "AlignAfterOpenBracket" : "Align",
			\ "AllowShortIfStatementsOnASingleLine" : "false",
			\ "AllowShortFunctionsOnASingleLine" : "Inline",
            \ "BreakBeforeBraces" : "Linux",
			\ "BinPackParameters" : "false",
			\ "BinPackArguments" : "false",
			\ "PointerAlignment" : "Right",
			\ "ColumnLimit" : "80",
			\ "IndentCaseLabels" : "false",
			\ "AlignTrailingComments" : "true",
			\ }

" DoxygenToolkit plugin
let g:DoxygenToolkit_briefTag_pre="@brief "
let g:DoxygenToolkit_paramTag_pre="@param "
let g:DoxygenToolkit_returnTag="@returns "
let g:DoxygenToolkit_blockHeader=""
let g:DoxygenToolkit_blockFooter=""
let g:DoxygenToolkit_authorName="Patryk Pruszynski"
let g:DoxygenToolkit_versionString=""
let g:DoxygenToolkit_licenseTag="<fill license>"
