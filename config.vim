" ---------------------------------------------
" Regular Vim Configuration (No Plugins Needed)
" ---------------------------------------------
" ---------------
" Color
" ---------------
if !exists("g:syntax_on")
  syntax enable
endif

if empty($TERM_PROGRAM)
  set notermguicolors
elseif ($TERM_PROGRAM != "Apple_Terminal")
  set termguicolors
endif

if has("gui_running")
  set guifont=Hack\ Nerd\ Font:h13
endif

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"Fix background color on kitty"
let &t_ut=''

" Force 256 color mode if available
if $TERM =~ '-256color'
  " italic
  let &t_ZH="\e[3m"
  let &t_ZR="\e[23m"
  highlight Comment cterm=italic
  set t_Co=256
endif

" colorscheme monokai
" let g:airline_theme='distinguished'
" let g:monokai_term_italic = 1
" let g:monokai_gui_italic = 1

colorscheme onedark
let g:airline_theme='onedark'

" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1
" let g:airline_theme='oceanicnext'
" colorscheme OceanicNext

" -----------------------------
" File Locations
" -----------------------------
set backupdir=~/.vim/.backup// " Double // causes backups to use full file path
set directory=~/.vim/.tmp//
set spellfile=~/.vim/spell/custom.en.utf-8.add
" Persistent Undo
if has('persistent_undo')
  set undofile
  set undodir=~/.vim/.undo
endif

" ---------------
" UI
" ---------------
set ruler           " Ruler on
set number          " Line numbers on
set laststatus=2    " Always show the statusline
set cursorline      " Highlight current line
set encoding=UTF-8
set title           " Set the title of the window in the terminal to the file
set ttyfast         " higher refresh rate"
set lazyredraw      " buffer screen updates"
set nowrap          " Line wrapping off
" set cmdheight=2   " Make the command area two lines high
" set noshowmode    " Don't show the mode since Powerline shows it

if exists('+colorcolumn')
  set colorcolumn=160 " Color the 160th column differently as a wrapping guide.
endif

" Disable tooltips for hovering keywords in Vim
if exists('+ballooneval')
  " This doesn't seem to stop tooltips for Ruby files
  set noballooneval
  " 100 second delay seems to be the only way to disable the tooltips
  set balloondelay=100000
endif

" ---------------
" Behaviors
" ---------------
syntax enable
set backup             " Turn on backups
set autoread           " Automatically reload changes if detected
set wildmenu           " Turn on WiLd menu
" longest common part, then all.
set wildmode=longest,full
set hidden             " Change buffer - without saving
set history=768        " Number of things to remember in history.
set confirm            " Enable error files & error jumping.
set clipboard+=unnamed " Yanks go on clipboard instead.
set autowrite          " Writes on make/shell commands
set timeoutlen=400     " Time to wait for a command (after leader for example).
set ttimeout
set ttimeoutlen=100    " Time to wait for a key sequence.
set nofoldenable       " Disable folding entirely.
set foldlevelstart=99  " I really don't like folds.
set formatoptions=crql
set iskeyword+=\$,-   " Add extra characters that are valid parts of variables
set nostartofline      " Don't go to the start of the line after some commands
set scrolloff=3        " Keep three lines below the last line when scrolling
set gdefault           " this makes search/replace global by default
set switchbuf=useopen  " Switch to an existing buffer if one exists
set relativenumber

" ---------------
" Text Format
" ---------------
set tabstop=2
set backspace=indent,eol,start " Delete everything with backspace
set shiftwidth=2 " Tabs under smart indent
set shiftround
set softtabstop=2
set cindent
set autoindent
set smarttab
set expandtab

" ---------------
" Searching
" ---------------
set ignorecase " Case insensitive search
set smartcase  " Non-case sensitive search
set incsearch  " Incremental search
set hlsearch   " Highlight search results
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,*.DS_Store,
  \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc,
  \rake-pipeline-*

" ---------------
" Visual
" ---------------
set showmatch   " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink
" Show invisible characters
set list

" Show trailing spaces as dots and carrots for extended lines.
" From Janus, http://git.io/PLbAlw

" Reset the listchars
set listchars=""
" make tabs visible
set listchars=tab:▸▸
" show trailing spaces as dots
set listchars+=trail:•
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
set listchars+=extends:>
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
set listchars+=precedes:<

" ---------------
" Sounds
" ---------------
set noerrorbells
set visualbell
set t_vb=

" ---------------
" Mouse
" ---------------
" set mousehide  " Hide mouse after chars typed
" set mouse=a    " Mouse in all modes

" Better complete options to speed it up
set complete=.,w,b,u,U

"Identing"
set nocompatible      " We're running Vim, not Vi!
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
