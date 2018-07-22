set nocompatible

set colorcolumn=70

"indent
set shiftwidth=8
set tabstop=8
set expandtab "for python

"Grep
command! -nargs=+ Grep execute 'silent grep! -I -r -n  . -e <args>' | copen | execute 'silent /<args>'

"BUFFERS
:nnoremap <C-j> :bprevious<CR>
:nnoremap <C-k> :bnext<CR>

" highlight trailing whitespaces (except when typing) and spaces before tabs
highlight ExtraWhitespace ctermbg=green guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$\| \+\ze\t/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$\| \+\ze\t/
autocmd BufWinLeave * call clearmatches()
