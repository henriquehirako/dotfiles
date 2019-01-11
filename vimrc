let mapleader=","

source ~/.vim/plug.vim
source ~/.vim/config.vim
source ~/.vim/color.vim
source ~/.vim/plugins.config.vim

" Buffers
nnoremap <silent> <S-N> :bprevious<CR>
nnoremap <silent> <C-N> :bnext<CR>
nnoremap <silent> <S-Tab> :bnext<CR>
nnoremap <silent> <C-W> :bdelete<CR>

tnoremap <C-J> <C-W><C-J>

" REMAP REDO
noremap <S-U> <C-R>

" JSON Concealing
let g:vim_json_syntax_conceal = 0

" Clear Search
:let @/ = ""

" Copy working properly
vmap '' :w !pbcopy<CR><CR>

"Enable .vimrc for each project"
set exrc
set secure
