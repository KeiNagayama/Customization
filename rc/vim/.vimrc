" appearance
set number
syntax on
set term=xterm-256color

" dracula theme
packadd! dracula
colorscheme dracula

" indent
set smartindent
set tabstop=4
set shiftwidth=4

" environment
set noswapfile
set laststatus=2
set vb t_vb=  " remove a beep sound
set mouse=a   " enable mouse operation

" search
set hlsearch
set incsearch

" emacs commands in insert mode
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-a> <Home>
inoremap <C-e> <End>
" inoremap <C-k> <Esc>Da<Del>
inoremap <C-x> <Esc>ddi
inoremap <C-s> <Esc>:w<CR>a
inoremap <C-z> <Esc>ua
inoremap <C-y> <Esc>pa

