execute pathogen#infect()
set nomodeline
set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin on

let PHP_autoformatcomment = 0

set ts=8 sts=2 sw=2 tw=0 et
au FileType javascript set cin
au FileType yaml set et
au FileType vim set sts=2 sw=2
au FileType php set tw=0 ts=8 sts=2 sw=2
au FileType sql set sts=2 sw=2
au FileType python set sts=2 sw=2

autocmd BufNewFile,BufRead *.theme set syntax=php

au BufRead,BufNewFile *.install
  \ if getline(1) =~ '<?php' |
  \   setf php |
  \ end

map <C-T> ==j

let g:ansible_unindent_after_newline = 1
