set nocompatible
filetype off

set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Shougo/unite.vim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-surround'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-scripts/AnsiEsc.vim'
Plugin 'scrooloose/nerdtree'
call vundle#end()

filetype plugin indent on

set tags=~/.tags
set noswapfile
set number
set tabstop=2
set shiftwidth=2
"set softtabstop=2
set smartindent
set autoindent
set expandtab
set smarttab
"set list
set hidden
set incsearch
set hlsearch
set smartcase
set wildmenu
set showcmd

set laststatus=2
set statusline=%<%f\ %m%r%h%w
set statusline+=%{'['.(&fenc!=''?&fenc:&enc).']['.&fileformat.']'}
set statusline+=%=%l/%L,%c%V%8P

" 最後のカーソル位置を復元
if has("autocmd")
   autocmd BufReadPost *
   \ if line("'\"") > 0 && line ("'\"") <= line("$") |
   \   exe "normal! g'\"" |
   \ endif
endif

syntax on
colorscheme torte
