syntax on

set autoindent
set expandtab
set tabstop=2
set shiftwidth=4
set cursorline
set number

call plug#begin()

Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'mattn/vim-lsp-icons'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'gkeep/iceberg-dark'
call plug#end()

let g:airline_theme='icebergDark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_completeopt = 0
let g:asyncomplete_popup_delay = 200
let g:lsp_text_edit_enabled = 0
