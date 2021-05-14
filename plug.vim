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
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }

Plug 'tpope/vim-haml',      { 'for': 'haml' }
Plug 'tpope/vim-rails',     { 'for': 'ruby' }
" Plug 'tpope/vim-rake',      { 'for': 'ruby' }
" Plug 'tpope/vim-bundler',   { 'for': 'ruby' }
Plug 'tpope/vim-dispatch',  { 'for': 'ruby' }
Plug 'tpope/vim-tbone',
Plug 'vim-ruby/vim-ruby',   { 'for': 'ruby' }
Plug 'noprompt/vim-yardoc', { 'for': 'ruby' }

Plug 'kylef/apiblueprint.vim', { 'for': 'apiblueprint' }
Plug 'mustache/vim-mustache-handlebars', { 'for': 'html.mustache' }
Plug 'keith/swift.vim', { 'for': 'swift' }

Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'isruslan/vim-es6', { 'for': 'javascript' }
Plug 'crusoexia/vim-javascript-lib', { 'for': 'javascript' }
Plug 'alvan/vim-closetag'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'shawncplus/phpcomplete.vim', { 'for': 'php' }

Plug 'hashivim/vim-terraform', { 'for': 'tf' }

Plug 'ludovicchabant/vim-gutentags'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }
Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'tomlion/vim-solidity', { 'for': 'solidity' }

Plug 'groenewege/vim-less', { 'for': 'less' }
" Plug 'ternjs/tern_for_vim'
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'mitermayer/vim-prettier'

"Color Scheme"
Plug 'ayu-theme/ayu-vim'
" Plug 'mhartington/oceanic-next'
" Plug 'joshdick/onedark.vim'
" Plug 'crusoexia/vim-monokai'
" Plug 'chrisbra/colorizer'
" Plug 'dracula/vim', { 'as': 'dracula' }
" Plug 'sonph/onehalf', { 'rtp': 'vim/' }
" Plug 'lifepillar/vim-wwdc16-theme'
" Plug 'dikiaap/minimalist'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'reedes/vim-colors-pencil'
" Plug 'drewtempelmeyer/palenight.vim'
" Plug 'rakr/vim-one'
" Plug 'tpope/vim-vividchalk'
" Plug 'agude/vim-eldar'
" Plug 'flrnd/plastic.vim'
" Plug 'gkapfham/vim-vitamin-onec'
" Plug 'arcticicestudio/nord-vim'
" Plug 'sjl/badwolf/'
" Plug 'kyoz/purify', { 'rtp': 'vim' }

" Game "
Plug 'vim/killersheep'

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
Plug 'valloric/youcompleteme', { 'do': './install.py' }

" Language Client for solargraph
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }

"NerdTree"
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on': 'NERDTreeToggle' }

Plug 'airblade/vim-gitgutter'

"DEBUG"
"Plug 'vim-vdebug/vdebug'

"FZF"
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"TMUX"
Plug 'christoomey/vim-tmux-navigator'

"Spell Check"
Plug 'kamykn/spelunker.vim'

" Plug 'wakatime/vim-wakatime'
Plug 'rizzatti/dash.vim'

call plug#end()
