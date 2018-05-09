" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

" Scroll with C-e | C-y
Plug 'yuttie/comfortable-motion.vim'

" The following are examples of different formats supported.
" Keep Plug commands between vundle#begin/end.
" plugin on GitHub repo

" Default configs "
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
"Commenting"
Plug 'tpope/vim-commentary'
"Surround"
Plug 'tpope/vim-surround'

Plug 'terryma/vim-multiple-cursors'

"Editor Config"
Plug 'editorconfig/editorconfig-vim'

"Syntax Highlight"
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'tpope/vim-haml'
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }

Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'isruslan/vim-es6', { 'for': 'javascript' }
Plug 'crusoexia/vim-javascript-lib', { 'for': 'javascript' }

" Plug 'othree/es.next.syntax.vim'
" Plug 'othree/yajs.vim'
" Plug 'othree/html5.vim'
" Plug 'othree/javascript-libraries-syntax.vim'
" Plug 'othree/jspc.vim'

Plug 'groenewege/vim-less'
Plug 'marijnh/tern_for_vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'elzr/vim-json'
Plug 'mitermayer/vim-prettier'

"Color Scheme"
Plug 'mhartington/oceanic-next'
Plug 'joshdick/onedark.vim'
Plug 'crusoexia/vim-monokai'

"Airline"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Start screen
Plug 'mhinz/vim-startify'

"Syntax checker"
Plug 'w0rp/ale'
" Plug 'scrooloose/syntastic'

"Auto close braces"
Plug 'raimondi/delimitmate'

"YouCompleteMe - Must be compiled"
Plug 'valloric/youcompleteme', { 'do': './install.py --tern-completer --js-completer'}

"NerdTree"
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on': 'NERDTreeToggle' }

"Cool icons"
Plug 'ryanoasis/vim-devicons'

Plug 'airblade/vim-gitgutter'

"ACK"
Plug 'mileszs/ack.vim'

"CtrlP"
Plug 'ctrlpvim/ctrlp.vim'

"TMUX"
Plug 'christoomey/vim-tmux-navigator'

Plug 'wakatime/vim-wakatime'


call plug#end()
