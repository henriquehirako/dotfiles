let mapleader=","

source ~/.vim/plug.vim
source ~/.vim/config.vim

let g:ale_emit_conflict_warnings = 0

"CtrlP"
" if executable("ag")
"   let g:ackrg = "ag --vimgrep"
"   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" endif
" set runtimepath^=~/.vim/bundle/ctrlp.vim
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/dists/*,*/dist/,*/log/**
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'
" let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
" map <C-@> :CtrlPBuffer<CR>
" nnoremap <leader>f :CtrlP<CR>
" nnoremap <leader>b :CtrlPBuffer<CR>
" nnoremap <leader>m :CtrlPMRUFiles<CR>
" nnoremap <leader>t :CtrlPTag<CR>

"FZF + ripgrep"
" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
set grepprg=rg\ --vimgrep

map <C-@> :Buffers<CR>
map <C-p> :Files<CR>
nnoremap <leader>f :Find<CR>
"END FZF"

"MAP TABS"
nnoremap <S-Tab> :bprevious<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <C-w> :bd<CR>

"NerdTree"
map <leader><leader> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1
"Close nerdtree if it's the only left window
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Prevent changing tab when on nerdtree"
autocmd FileType nerdtree noremap <buffer> <Tab> <nop>
autocmd FileType nerdtree noremap <buffer> <S-Tab> <nop>

"Dev Icons"
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

"NerdTree syntax highlight (icons colored)
let g:NERDTreeSyntaxDisableDefaultExtensions = 1
let g:NERDTreeDisableExactMatchHighlight = 1
let g:NERDTreeDisablePatternMatchHighlight = 1
let g:NERDTreeSyntaxEnabledExtensions = ['js', 'json', 'rb', 'erb', 'html', 'scss', 'css', 'png', 'jpeg', 'jpg', 'svg', 'gif', 'vim']
let NERDTreeHighlightCursorline = 0

"ALE"
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_text_changed = 'never'

"JSON Concealing"
let g:vim_json_syntax_conceal = 0

"You Complete Me"
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

"https://github.com/othree/javascript-libraries-syntax.vim
let g:used_javascript_libs = 'underscore,react'

"Highlight jsx"
let g:jsx_ext_required = 0

"TMUX Save on leaving panel"
let g:tmux_navigator_save_on_switch = 1

"Clear Search"
:let @/ = ""

"Airline"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"Git gutter"
let g:gitgutter_grep = 'grep'
let g:gitgutter_max_signs = 1000  " default value

"Copy working properly"
vmap '' :w !pbcopy<CR><CR>

"Enable .vimrc for each project"
set exrc
set secure
