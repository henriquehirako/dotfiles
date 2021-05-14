" --------------------------------------
" FZF + RIPGREP
" --------------------------------------

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
" \ 'rg --column --line-number --no-heading --color=always --fixed-strings --smart-case --hidden --follow --glob "!.git/*" -g "!db/seeds/*" '
command! -bang -nargs=* Rg
      \ call fzf#vim#grep(
      \ 'rg --column --line-number --no-heading --color=always --smart-case --hidden --follow --glob "!.git/*" -g "!app/assets/images/*" -g "!vendor/bundle/*" '
      \ .shellescape(<q-args>), 1,
      \ <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
      \         : fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%:hidden', '?'),
      \ <bang>0)

" Likewise, Files command with preview window
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>,
  \ <bang>0 ? fzf#vim#with_preview({}, 'right:70%', '?')
  \         : fzf#vim#with_preview({}, 'right:70%:hidden', '?'),
  \ <bang>0)

set grepprg=rg\ --vimgrep

" nmap <C-@> :Buffers<CR>
" nmap <C-p> :Files<CR>
" nmap <C-f> :Files!<CR>
" nmap <S-f> :Rg!<CR>
" nnoremap <leader>f :Rg<CR>
" Prevent opening files on nerdtree tab
nnoremap <silent> <expr> <C-@> (expand('%') =~ 'NERD_tree' ? "\<C-w>\<C-w>" : '').":Buffers<CR>"
nnoremap <silent> <expr> <C-p> (expand('%') =~ 'NERD_tree' ? "\<C-w>\<C-w>" : '').":Files<CR>"
nnoremap <silent> <expr> <C-f> (expand('%') =~ 'NERD_tree' ? "\<C-w>\<C-w>" : '').":Files!<CR>"
nnoremap <silent> <expr> <S-f> (expand('%') =~ 'NERD_tree' ? "\<C-w>\<C-w>" : '').":Rg!<CR>"
nnoremap <silent> <expr> <Leader>f (expand('%') =~ 'NERD_tree' ? "\<C-w>\<C-w>" : '').":Rg\<CR>"

" Buffers Navigation
nnoremap <silent> <S-Tab> :bprevious<CR>
nnoremap <silent> <C-N> :bnext<CR>
nnoremap <silent> <C-W> :bdelete<CR>

" Prevent changing buffer when on nerdtree"
autocmd FileType nerdtree noremap <buffer> <S-Tab> <nop>
autocmd FileType nerdtree noremap <buffer> <C-N> <nop>

" Prevent changing buffer when on quick fix
autocmd FileType qf noremap <buffer> <S-Tab> <C-w><C-w>:bprevious<CR>
autocmd FileType qf noremap <buffer> <C-N> <C-w><C-w>:bnext<CR>

" Exclude quickfix buffer from bufferlist
augroup qf
    autocmd!
    autocmd FileType qf set nobuflisted
augroup END

" Toggle Quick fix
let g:dispatch_quickfix_height = 20
function! QuickFix_toggle()
    for i in range(1, winnr('$'))
        let bnum = winbufnr(i)
        if getbufvar(bnum, '&buftype') == 'quickfix'
            cclose
            return
        endif
    endfor
    copen 20
endfunction

nnoremap <silent> <expr> <Leader>q (expand('%') =~ 'NERD_tree' ? "\<C-w>\<C-w>" : '').":call QuickFix_toggle()\<CR>"

" Run test under cursor
nnoremap <leader>t :execute 'Start bundle exec rails test -b '.expand('%:p').':'.line('.') <bar> :Tmux join-pane -h -t !<cr>
" Run current test file
nnoremap <leader>T :execute 'Start bundle exec rails test -b '.expand('%:p') <bar> :Tmux join-pane -h -t !<cr>
" Run ruby %
nnoremap <leader>r :execute 'Start ruby -rbyebug '.expand('%:p') <bar> :Tmux join-pane -h -t !<cr>
" Run ruby %
nnoremap <leader>R :execute 'Start bundle exec rails runner '.expand('%:p') <bar> :Tmux join-pane -h -t !<cr>

" FZF Match theme color
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Guten Tags
let g:gutentags_file_list_command = 'rg --files'
set statusline+=%{gutentags#statusline()}

" --------------------------------------
" NerdTree
" --------------------------------------
map <leader><leader> :NERDTreeToggle<CR>
" Expand nerd tree on current file.
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
let NERDTreeShowHidden = 1
let NERDTreeRespectWildIgnore = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeHighlightCursorline = 1
let NERDTreeHijackNetrw = 1
let NERDTreeNodeDelimiter="\x07"

" Close nerdtree if it's the only left window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Is this workaround still needed?
augroup nerdtreeconcealbrackets
  autocmd!
  " Yes, there is an empty space in front of cchar= 
  autocmd FileType nerdtree :IndentLinesDisable
  autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\]" contained conceal containedin=ALL cchar= 
  autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\[" contained conceal containedin=ALL
  autocmd FileType nerdtree :IndentLinesEnable
augroup END

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade',     'green',   'none', '#8FAA54')
call NERDTreeHighlightFile('vim',      'green',   'none', '#8FAA54')
call NERDTreeHighlightFile('md',       'blue',    'none', '#689FB6')
call NERDTreeHighlightFile('ini',      'yellow',  'none', '#F09F17')
call NERDTreeHighlightFile('yml',      'yellow',  'none', '#F09F17')
call NERDTreeHighlightFile('config',   'yellow',  'none', '#F09F17')
call NERDTreeHighlightFile('conf',     'yellow',  'none', '#F09F17')
call NERDTreeHighlightFile('json',     'yellow',  'none', '#F09F17')
call NERDTreeHighlightFile('html',     'yellow',  'none', '#F09F17')
call NERDTreeHighlightFile('jbuilder', 'yellow',  'none', '#F09F17')
call NERDTreeHighlightFile('styl',     'cyan',    'none', '#3AFFDB')
call NERDTreeHighlightFile('css',      'cyan',    'none', '#3AFFDB')
call NERDTreeHighlightFile('coffee',   'Red',     'none', '#AE403F')
call NERDTreeHighlightFile('js',       'Red',     'none', '#AE403F')
call NERDTreeHighlightFile('rb',       'Red',     'none', '#AE403F')
call NERDTreeHighlightFile('php',      'Magenta', 'none', '#ff00ff')

" --------------------------------------
" ALE
"\   'php': ['php_cs_fixer'],
" --------------------------------------

let g:ale_completion_enabled = 0
let g:ale_emit_conflict_warnings = 0
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'scss': ['stylelint'],
\   'css': ['stylelint'],
\   'solidity': ['solium'],
\   'ruby': ['rubocop'],
\}
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'scss': ['stylelint'],
\   'css': ['stylelint'],
\   'solidity': ['solium'],
\   'php': ['php'],
\   'ruby': ['rails_best_practices', 'rubocop', 'reek'],
\}

" Uncomment to run eslint_d global. Otherwise it will search on node_modules
" let g:ale_javascript_eslint_use_global = 1
" let g:ale_javascript_eslint_executable = 'eslint_d'
let g:ale_fix_on_save = 0
" let g:ale_lint_on_text_changed = 'never'
let g:ale_cache_executable_check_failures = 1
let g:ale_ruby_rails_best_practices_executable = 'bundle'
let g:ale_ruby_reek_executable = 'bundle'
let g:ale_ruby_rubocop_executable = 'bundle'
let g:airline#extensions#ale#enabled = 1

" --------------------------------------
" You Complete Me
" --------------------------------------
let g:ycm_collect_identifiers_from_tags_files = 1

let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_filepath_blacklist = {
\ 'html' : 1,
\ 'xml' : 1,
\}

set tags=tags

nnoremap <leader>d :YcmCompleter GoTo<CR>

" --------------------------------------
" Language Client
" --------------------------------------
let g:LanguageClient_serverCommands = { 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'] }
let g:LanguageClient_autoStart = 1
let g:LanguageClient_autoStop = 1

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" --------------------------------------
" Others plugins
" --------------------------------------

"https://github.com/othree/javascript-libraries-syntax.vim
let g:used_javascript_libs = 'underscore,react'

"Close tags
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

"Highlight jsx"
let g:jsx_ext_required = 0

"TMUX Save on leaving panel"
" let g:tmux_navigator_save_on_switch = 1

"Airline"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_highlighting_cache = 1

"Git gutter"
let g:gitgutter_grep = 'grep'
let g:gitgutter_max_signs = 1000  " default value

" Vim Markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_override_foldtext = 0
let g:vim_markdown_conceal = 0
let g:tex_conceal = ""
let g:vim_markdown_math = 1
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_fenced_languages = ['html', 'python', 'bash=sh', 'ruby', 'javascript']
let g:vim_markdown_follow_anchor = 1

"Spell checker (sloooow)
set nospell
let g:enable_spelunker_vim = 0
