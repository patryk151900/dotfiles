" Unmap the arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
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
map <C-h> :call PreviousBuffer()<CR>
map <C-l> :call NextBuffer()<CR>
nmap <silent> <F3> :NERDTreeToggle<CR>
nmap <silent> <F4> :TagbarToggle<CR>

"cycling through buffers
no <silent> <C-y> :call PreviousBuffer()<CR>
no <silent> <C-o> :call NextBuffer()<CR>

" define leader key
let mapleader='\'

"show file name
map <leader>f  :echo expand('%:p')<CR>

"comile test
map <leader><F9> :!make clean<CR>
map <leader><F10> :!make<CR>
map <leader><F11> :!make test<CR>
map <leader><F12> :!make tests<CR>

"Lusty buffer
nmap <leader>B :LustyBufferExplorer<CR>
nmap <leader>b :LustyBufferGrep<CR>

"Ack
nmap <leader>A :Ack <C-r><C-w><CR>


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

