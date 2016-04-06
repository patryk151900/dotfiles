" Unmap the arrow keys
no <down> <Nop>
no <silent> <left> :call PreviousBuffer()<CR> 
no <silent> <right> :call NextBuffer()<CR> 
no <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

"nerd tree operation
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l>
nmap <silent> <F3> :NERDTreeToggle<CR>

let mapleader='\'

"show file name
map <leader>f  :echo expand('%:p')<CR>

"Lusty buffer
nmap <leader>B :LustyBufferExplorer<CR>
nmap <leader>b :LustyBufferGrep<CR>

"Command-T



"airline mapping
  nmap <leader>1 <Plug>AirlineSelectTab1
  nmap <leader>2 <Plug>AirlineSelectTab2
  nmap <leader>3 <Plug>AirlineSelectTab3
  nmap <leader>4 <Plug>AirlineSelectTab4
  nmap <leader>5 <Plug>AirlineSelectTab5
  nmap <leader>6 <Plug>AirlineSelectTab6
  nmap <leader>7 <Plug>AirlineSelectTab7
  nmap <leader>8 <Plug>AirlineSelectTab8
  nmap <leader>9 <Plug>AirlineSelectTab9

