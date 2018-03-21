" http://qiita.com/delphinus/items/00ff2c0ba972c6e41542
" vimrc に以下のように追記

" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = expand('~/.cache/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
if !isdirectory(s:dein_repo_dir)
execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif
execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif


" 設定開始
if dein#load_state(s:dein_dir)
call dein#begin(s:dein_dir)

" プラグインリストを収めた TOML ファイル
" 予め TOML ファイル（後述）を用意しておく
let g:rc_dir    = expand('~/.vim/rc')
let s:toml      = g:rc_dir . '/dein.toml'
let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

" TOML を読み込み、キャッシュしておく
call dein#load_toml(s:toml,      {'lazy': 0})
call dein#load_toml(s:lazy_toml, {'lazy': 1})

" 設定終了
call dein#end()
call dein#save_state()
endif

" もし、未インストールものものがあったらインストール
if dein#check_install()
call dein#install()
endif

let OSTYPE = system('uname')
if OSTYPE == "Darwin\n"
    :set term=xterm-256color
endif

"Airline
"http://dev.classmethod.jp/devenv/vim-ricty-for-powerline/
" Ricty Powerline
" $ brew upgrade ricty --with-powerline
set laststatus=2
set showtabline=2 " 常にタブラインを表示
set t_Co=256 " この設定がないと色が正しく表示されない
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
"let g:airline_theme='papercolor'
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1

set background=dark
colorscheme molokai
syntax on

set autoindent
set expandtab
set tabstop=2
set shiftwidth=4
set cursorline
set number
