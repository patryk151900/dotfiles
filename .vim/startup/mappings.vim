" Unmap the arrow keys
"no <down> <Nop>
"no <left> <Nop>
"no <right> <Nop>
"no <up> <Nop>
"ino <down> <Nop>
"ino <left> <Nop>
"ino <right> <Nop>
"ino <up> <Nop>
"vno <down> <Nop>
"vno <left> <Nop>
"vno <right> <Nop>
"vno <up> <Nop>
"
"map <up> :resize +1<CR>
"map <down> :resize -1<CR>
"map <right> :vertical resize +1<CR>
"map <left> :vertical resize -1<CR>

"nerd tree operation
map <C-h> :call PreviousBuffer()<CR>
map <C-l> :call NextBuffer()<CR>
map <silent> <F3> :NERDTreeToggle<CR>
map <silent> <F4> :TagbarToggle<CR>

"cycling through buffers
no <silent> <C-y> :call PreviousBuffer()<CR>
no <silent> <C-o> :call NextBuffer()<CR>

" define leader key
let mapleader='\'

"display readme.md with hints
nmap <leader>hv :e ~/.vim/readme.md<CR>
nmap <leader>hl :e ~/.knowledge/linux.md<CR>
nmap <leader>hp :e ~/.knowledge/linux_programming.md<CR>
nmap <leader>hc :e ~/.knowledge/c.md<CR>
nmap <leader>hg :e ~/.knowledge/git.md<CR>
nmap <leader>ht :e ~/.knowledge/tmux.md<CR>

"show file path and copy to clipboard ('+' buffer)
map <leader>p :echo expand('%:p') <bar> :let @+ = expand("%:p") <CR>

"convert file format to unix
map <leader>u :e ++ff=dos <bar> :setlocal ff=unix<CR>

"make clang format
map <leader>f  :ClangFormat<CR>
"yapf for python files
autocmd BufEnter,BufNew *.py map <leader>f :call Yapf()<CR>

"C related make calls
map <leader><F7> :!./s/build.sh 2> compile_log.txt<CR>
map <leader><F8> :make run<CR>
map <leader><F9> :make clean<CR>
map <leader><F10> :make<CR>
map <leader><F11> :make test_single<CR>
map <leader><F12> :make test_all<CR>

"Python execution
autocmd BufEnter,BufNew *.py map <leader><F8> :!python % 0x5 bitwise.txt<CR>

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

"spellcheck
nmap <leader>s :setlocal spell! spelllang=en_us<CR>

"wrap
nmap <leader>w :set wrap!<CR>

"highlight search
nmap <leader>l :set hlsearch!<CR>

"put timestamp
nmap <leader>t :put =strftime('%Y-%m-%d  %H:%M')<CR>
 
"DoxygenToolkit
nmap <leader>d :Dox<CR>

" save/read session to current dir
nmap <leader>sw :mksession! session.vim<CR>
nmap <leader>sr :so session.vim<CR>

"load work workspace (gvim on work laptop)
nmap <leader>e :so c:\_bbb\eknowledge\session.vim<CR>

