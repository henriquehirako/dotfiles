set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

"Editor Config"
Plugin 'editorconfig/editorconfig-vim'

"Syntax Highlight"
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'othree/html5.vim'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-haml'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'marijnh/tern_for_vim'
Plugin 'crusoexia/vim-javascript-lib'
Plugin 'tpope/vim-markdown'

"Airline"
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Surround"
Plugin 'tpope/vim-surround'

"Commenting"
Plugin 'tpope/vim-commentary'

"Syntax checker"
Plugin 'scrooloose/syntastic'

"jshint for jaavascript syntastic"
Plugin 'shutnik/jshint2.vim'

"Auto close braces"
Plugin 'raimondi/delimitmate'

"YouCompleteMe - Must be compiled"
Plugin 'valloric/youcompleteme'

"NerdTree"
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

"CtrlP"
Plugin 'kien/ctrlp.vim'

"TMUX"
Plugin 'christoomey/vim-tmux-navigator'

Plugin 'wakatime/vim-wakatime'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
