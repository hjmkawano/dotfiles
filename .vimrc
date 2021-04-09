syntax on

set autoindent
set expandtab
set tabstop=2
set shiftwidth=4
set cursorline
set number

call plug#begin()
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()
