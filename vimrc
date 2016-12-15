source ~/.vim/config.vim

source ~/.vim/vundle.vim
"CtrlP"
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/dists/*
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"NerdTree"
map <C-n> :NERDTreeToggle<CR>

"Syntastic"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers = ['jshint']
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_checkers = ['eslint', 'flow']
" let g:syntastic_javascript_flow_exec = 'flow check-contents'
let g:syntastic_javascript_eslint_exec = 'eslint_d'
let g:syntastic_ruby_checkers = ['rubocop']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"TMUX Save on leaving panel"
let g:tmux_navigator_save_on_switch = 1

"Clear Search"
:let @/ = ""

"Airline"
let g:airline_powerline_fonts = 1

"Copy working properly"
vmap '' :w !pbcopy<CR><CR>

"Enable .vimrc for each project"
set exrc
set secure
