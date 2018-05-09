" source ~/.vim/vundle.vim
source ~/.vim/plug.vim
source ~/.vim/config.vim

let g:ale_emit_conflict_warnings = 0

"CtrlP"
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/dists/*,*/dist/,*/log/**
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
map <C-@> :CtrlPBuffer<CR>
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMRUFiles<CR>
nnoremap <leader>t :CtrlPTag<CR>

"Ctrl Space"
let g:CtrlSpaceUseTabline = 1

"MAP TABS"
nnoremap <S-Tab> :bprevious<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <C-w> :bd<CR>

"NerdTree"
map <leader><leader> :NERDTreeToggle<CR>
"Close nerdtree if it's the only left window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Prevent changing tab when on nerdtree"
autocmd FileType nerdtree noremap <buffer> <Tab> <nop>
autocmd FileType nerdtree noremap <buffer> <S-Tab> <nop>

"Dev Icons"
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif

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

""Syntastic"
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

" " let g:syntastic_javascript_checkers = ['jshint']
" let g:syntastic_javascript_checkers = ['eslint']
" " let g:syntastic_javascript_checkers = ['eslint', 'flow']
" " let g:syntastic_javascript_flow_exec = 'flow check-contents'
" " let g:syntastic_javascript_eslint_exec = 'eslint_d'
" let g:syntastic_javascript_eslint_exec = './node_modules/.bin/eslint_d'
" " let g:syntastic_ruby_checkers = ['rubocop']
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

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
