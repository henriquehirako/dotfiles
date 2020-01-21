" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

" Scroll with C-e | C-y
" Plug 'yuttie/comfortable-motion.vim'

" Default configs "
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'yggdroot/indentline'

"Commenting"
Plug 'tpope/vim-commentary'

"Surround"
Plug 'tpope/vim-surround'

"Editor Config"
Plug 'editorconfig/editorconfig-vim'

"Obsession saves session before exit
Plug 'tpope/vim-obsession'

"Syntax Highlight"
Plug 'godlygeek/tabular'
Plug 'tpope/vim-markdown',  { 'for': 'markdown' }
Plug 'tpope/vim-haml'
Plug 'tpope/vim-rails',     { 'for': 'ruby' }
Plug 'tpope/vim-rake',      { 'for': 'ruby' }
Plug 'tpope/vim-bundler',   { 'for': 'ruby' }
Plug 'tpope/vim-dispatch',  { 'for': 'ruby' }
Plug 'vim-ruby/vim-ruby',   { 'for': 'ruby' }
Plug 'noprompt/vim-yardoc', { 'for': 'ruby' }
Plug 'kchmck/vim-coffee-script'
Plug 'kylef/apiblueprint.vim'
Plug 'mustache/vim-mustache-handlebars'

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

Plug 'StanAngeloff/php.vim', { 'for': 'php' }
" Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
Plug 'shawncplus/phpcomplete.vim'
Plug 'ludovicchabant/vim-gutentags'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }
Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
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
Plug 'reedes/vim-colors-pencil'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'rakr/vim-one'
Plug 'tpope/vim-vividchalk'
Plug 'agude/vim-eldar'
Plug 'flrnd/plastic.vim'
Plug 'gkapfham/vim-vitamin-onec'

"Airline"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Airline colors on tmux"
" Plug 'edkolev/tmuxline.vim'

"Start screen
Plug 'mhinz/vim-startify'

"Syntax checker"
Plug 'w0rp/ale'

"Auto close braces"
Plug 'raimondi/delimitmate'

"YouCompleteMe - Must be compiled"
" Plug 'valloric/youcompleteme', { 'do': './install.py --tern-completer --js-completer'}
Plug 'valloric/youcompleteme', { 'do': './install.py' }

"NerdTree"
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on': 'NERDTreeToggle' }

"Cool icons"
" Plug 'ryanoasis/vim-devicons'

Plug 'airblade/vim-gitgutter'

"DEBUG"
"Plug 'vim-vdebug/vdebug'

"FZF"
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"TMUX"
Plug 'christoomey/vim-tmux-navigator'

Plug 'wakatime/vim-wakatime'
Plug 'rizzatti/dash.vim'

call plug#end()
