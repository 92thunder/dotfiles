set nocompatible

"" color
colorscheme molokai
" railscasts.vim
if $COLORTERM == 'gnome-terminal'
  set term=gnome-256color
  colorscheme railscasts
else
  colorscheme default
endif
syntax on
set background=dark

"" indentなど
set autoindent smarttab
set smartindent
set tabstop=2 shiftwidth=2
" tabじゃなくてspace
set expandtab
"カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
" backspaceがすごくなる
set backspace=2

"" file
set autoread
set hidden
set noswapfile
set nobackup
filetype on
filetype plugin on
filetype indent on

"" 見た目
set number
set cursorline
set showmatch
set showcmd
set showmode
set nowrap
" tabを表示
set list
set listchars=tab:>\
set scrolloff=5

"" search
set wrapscan
set ignorecase
set smartcase
"最初の文字から
set incsearch
set hlsearch

au BufRead,BufNewFile *.coffee            set filetype=coffee
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
autocmd BufWritePost *.coffee silent CoffeeMake! -cb | cwindow | redraw!
"---------------------------------------------------
" NeoBundle
" --------------------------------------------------
filetype off
if has('vim_starting')
  set runtimepath+=~/.bundle/neobundle.vim/

  call neobundle#rc(expand('~/.bundle'))
endif

filetype plugin on
filetype indent on

"その他
NeoBundle 'http://github.com/Shougo/neobundle.vim.git'
NeoBundle 'http://github.com/Shougo/vimproc'

"ファイル
NeoBundle 'http://github.com/Shougo/unite.vim.git'
NeoBundle 'http://github.com/Shougo/vimshell.git'
NeoBundle 'http://github.com/scrooloose/nerdtree.git'

"補完
NeoBundle 'http://github.com/Shougo/neocomplcache.git'
NeoBundle 'http://github.com/taichouchou2/vim-rsense.git'
NeoBundle 'http://github.com/kchmck/vim-coffee-script.git'

"-------------------------------------------------
" その他
"-------------------------------------------------
" unite.vim
source ~/dotfiles/.vimrc.unite

" neocomplcache
source ~/dotfiles/.vimrc.neocomplcache


