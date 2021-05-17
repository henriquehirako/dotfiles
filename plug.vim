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

" Ruby
Plug 'tpope/vim-haml',      { 'for': 'haml' }
Plug 'tpope/vim-rails',     { 'for': 'ruby' }
Plug 'tpope/vim-dispatch',  { 'for': 'ruby' }
Plug 'vim-ruby/vim-ruby',   { 'for': 'ruby' }
Plug 'noprompt/vim-yardoc', { 'for': 'ruby' }

" Javascript
Plug 'pangloss/vim-javascript',                 { 'for': 'javascript' }
Plug 'mxw/vim-jsx',                             { 'for': 'javascript' }
Plug 'isruslan/vim-es6',                        { 'for': 'javascript' }
Plug 'crusoexia/vim-javascript-lib',            { 'for': 'javascript' }
Plug 'styled-components/vim-styled-components', { 'branch': 'main', 'for': 'javascript' }
" Plug 'ternjs/tern_for_vim'

" More PL
Plug 'StanAngeloff/php.vim',             { 'for': 'php' }
Plug 'shawncplus/phpcomplete.vim',       { 'for': 'php' }
Plug 'hashivim/vim-terraform',           { 'for': 'tf' }
Plug 'keith/swift.vim',                  { 'for': 'swift' }
Plug 'mustache/vim-mustache-handlebars', { 'for': 'html.mustache' }
Plug 'fatih/vim-go',                     { 'do': ':GoUpdateBinaries', 'for': 'go' }
Plug 'tomlion/vim-solidity',             { 'for': 'solidity' }
Plug 'kylef/apiblueprint.vim',           { 'for': 'apiblueprint' }
Plug 'groenewege/vim-less',              { 'for': 'less' }
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp' }
Plug 'elzr/vim-json',                    { 'for': 'json' }
Plug 'mitermayer/vim-prettier'
" Plug 'mdempsky/gocode',                  { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

" ctags
Plug 'ludovicchabant/vim-gutentags'

" misc
Plug 'alvan/vim-closetag'

"Auto close braces"
Plug 'raimondi/delimitmate'

"Color Scheme"
Plug 'ayu-theme/ayu-vim'

" Game "
" Plug 'vim/killersheep'

"Airline"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Start screen
" Plug 'mhinz/vim-startify'

"Syntax checker"
Plug 'w0rp/ale'

"YouCompleteMe - Must be compiled"
" Plug 'valloric/youcompleteme', { 'do': './install.py --tern-completer --js-completer'}
Plug 'valloric/youcompleteme', { 'do': './install.py' }

" Language Client for solargraph
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }

"NerdTree"
Plug 'scrooloose/nerdtree',                     { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin',             { 'on': 'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on': 'NERDTreeToggle' }

Plug 'airblade/vim-gitgutter'

"FZF"
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"TMUX"
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-tbone',

"Spell Check"
Plug 'kamykn/spelunker.vim'

Plug 'rizzatti/dash.vim'

call plug#end()
