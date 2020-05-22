" ---------------
" Necessary Tweaks for different terminals
" ---------------

if (empty($TMUX) && $TERM_PROGRAM == 'Apple_Terminal')
  set notermguicolors
else
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

" --------------------
" COLOR
" --------------------

" --------------------
"  One
" --------------------
" let g:airline_theme='one'
" let g:one_allow_italics = 1
" set background=dark
" colorscheme one

" --------------------
"  AYU
" --------------------
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" --------------------
"  Nord
" --------------------
" colorscheme nord

" --------------------
" Patagonia
" --------------------
" colorscheme patagonia

" --------------------
" Vitaminonec
" --------------------
" colorscheme vitaminonec

" --------------------
"  One Half Dark
" --------------------
" colorscheme onehalfdark
" let g:airline_theme='onehalfdark'

" --------------------
"  Pencil light | dark
" --------------------
" let g:pencil_higher_contrast_ui = 0 " 0=low (def), 1=high
" let g:pencil_neutral_headings = 1   " 0=blue (def), 1=normal
" let g:pencil_neutral_code_bg = 1    " 0=gray (def), 1=normal
" let g:pencil_gutter_color = 1       " 0=mono (def), 1=color
" let g:pencil_spell_undercurl = 1    " 0=underline, 1=undercurl (def)
" let g:pencil_terminal_italics = 1
" let g:airline_theme = 'pencil'
" colorscheme pencil
" set background=dark
" if ($TERM_PROGRAM != "alacritty")
"   colorscheme onedark
"   let g:airline_theme='onedark'
" endif

" --------------------
" Paper Color light | dark
" --------------------
" set background=dark
" colorscheme PaperColor
" let g:airline_theme='papercolor'

" --------------------
" Eldar
" --------------------
" colorscheme eldar

" --------------------
" Plastic
" --------------------
" set background=dark
" syntax on
" colorscheme plastic
" let g:lightline = { 'colorscheme': 'plastic' }

" --------------------
" Code Dark| dark
" --------------------
" set background=dark
" colorscheme codedark
" let g:airline_theme = 'codedark'

" --------------------
" Palenight
" --------------------
" set background=dark
" colorscheme palenight

" --------------------
"  WWDC16 Dark
" --------------------
" colorscheme wwdc16
" let g:airline_theme='minimalist'

" --------------------
"  Minimalist
" --------------------
" colorscheme minimalist
" let g:airline_theme='minimalist'
" let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1

" --------------------
"  Monokai
" --------------------
" colorscheme monokai
" let g:airline_theme='distinguished'
" let g:monokai_term_italic = 1
" let g:monokai_gui_italic = 1

" ---------------------
"  One Dark
" ---------------------
" colorscheme onedark
" let g:airline_theme='onedark'

" ---------------------
"  Oceanic Next
" ---------------------
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1
" let g:airline_theme='oceanicnext'
" colorscheme OceanicNext


