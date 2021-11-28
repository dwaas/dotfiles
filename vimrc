set nocompatible

set colorcolumn=70

"indent
set shiftwidth=8
set tabstop=8
set expandtab "for python

"folds
set foldmethod=syntax

"Grep
command! -nargs=+ Grep execute 'silent grep! -I -r -n  . -e <args>' | copen | execute 'silent /<args>'

"BUFFERS
:nnoremap <C-j> :bprevious<CR>
:nnoremap <C-k> :bnext<CR>

"highlight trailing whitespaces (except when typing) and spaces before tabs
highlight ExtraWhitespace ctermbg=green guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$\| \+\ze\t/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$\| \+\ze\t/
autocmd BufWinLeave * call clearmatches()

"visual spoofing
augroup Hiunicode
  autocmd!
  autocmd BufEnter *
       \ syntax match nonascii "[^\x00-\x7F]" |
       \ highlight nonascii ctermfg=NONE ctermbg=red
augroup END
