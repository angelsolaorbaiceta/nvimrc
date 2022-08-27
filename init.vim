" show line numbers in the left side
set number

" use the indent of the previous line for a newly created line
set autoindent

" display the current cursor position in the lower right corner
set ruler

" display matches for a seach while you type
set incsearch

" switch on the syntax highlighting
syntax on

" Plugins (Vim Plug)
" See: https://github.com/junegunn/vim-plug
call plug#begin()

" Golang server
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

" vim-go
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
