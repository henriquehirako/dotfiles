source ~/.vim/vundle.vim
source ~/.vim/config.vim

let g:ale_emit_conflict_warnings = 0

set colorcolumn=120

"CtrlP"
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/dists/*,*/dist/*
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"NerdTree"
map <C-n> :NERDTreeToggle<CR>

"Syntastic"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"JSON Concealing"
let g:vim_json_syntax_conceal = 0

"You Complete Me"
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

"https://github.com/othree/javascript-libraries-syntax.vim
let g:used_javascript_libs = 'underscore,react'

" let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_checkers = ['eslint', 'flow']
" let g:syntastic_javascript_flow_exec = 'flow check-contents'
" let g:syntastic_javascript_eslint_exec = 'eslint_d'
let g:syntastic_javascript_eslint_exec = './node_modules/.bin/eslint_d'
" let g:syntastic_ruby_checkers = ['rubocop']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Highlight jsx"
let g:jsx_ext_required = 0

"TMUX Save on leaving panel"
let g:tmux_navigator_save_on_switch = 1

"Clear Search"
:let @/ = ""

"Airline"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"MAP TABS"
nnoremap <S-Tab> :bprevious<CR>
nnoremap <Tab> :bnext<CR>

"Copy working properly"
vmap '' :w !pbcopy<CR><CR>

"Enable .vimrc for each project"
set exrc
set secure
