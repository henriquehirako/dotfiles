" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

" Scroll with C-e | C-y
Plug 'yuttie/comfortable-motion.vim'

" Default configs "
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'yggdroot/indentline'

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
Plug 'alvan/vim-closetag'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" Plug 'othree/es.next.syntax.vim'
" Plug 'othree/yajs.vim'
" Plug 'othree/html5.vim'
" Plug 'othree/javascript-libraries-syntax.vim'
" Plug 'othree/jspc.vim'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }
Plug 'tomlion/vim-solidity'

Plug 'groenewege/vim-less'
" Plug 'ternjs/tern_for_vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'elzr/vim-json'
Plug 'mitermayer/vim-prettier'

"Color Scheme"
Plug 'mhartington/oceanic-next'
Plug 'joshdick/onedark.vim'
Plug 'crusoexia/vim-monokai'
Plug 'chrisbra/colorizer'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sonph/onehalf', { 'rtp': 'vim/' }
Plug 'lifepillar/vim-wwdc16-theme'
Plug 'dikiaap/minimalist'
Plug 'NLKNguyen/papercolor-theme'

"Airline"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Start screen
Plug 'mhinz/vim-startify'

"Syntax checker"
Plug 'w0rp/ale'

"Auto close braces"
Plug 'raimondi/delimitmate'

"YouCompleteMe - Must be compiled"
" Plug 'valloric/youcompleteme', { 'do': './install.py --tern-completer --js-completer'}
Plug 'valloric/youcompleteme', { 'do': './install.py --tern-completer'}

"NerdTree"
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on': 'NERDTreeToggle' }

"Cool icons"
Plug 'ryanoasis/vim-devicons'

Plug 'airblade/vim-gitgutter'

"FZF"
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"TMUX"
Plug 'christoomey/vim-tmux-navigator'

Plug 'wakatime/vim-wakatime'

call plug#end()
