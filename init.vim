" turn hybrid line numbers on
set number relativenumber
set nu rnu

" use the indent of the previous line for a newly created line
set autoindent

" display the current cursor position in the lower right corner
set ruler

" display matches for a seach while you type
set incsearch

" highlight search results         
set hlsearch   

" switch on the syntax highlighting
syntax on

" Use Ctrl-J to break a line in normal mode
:nnoremap <NL> i<CR><ESC>

" Plugins (Vim Plug)
" See: https://github.com/junegunn/vim-plug
" See: https://vimawesome.com
call plug#begin()

  " Golang server
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

  " Better syntax support for multiple languages
  Plug 'sheerun/vim-polyglot'

  " File Explorer
  Plug 'preservim/nerdtree'

  " Auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs'

  " Surround with: https://vimawesome.com/plugin/surround-vim
  Plug 'tpope/vim-surround'

  " GitHub Copilot
  Plug 'github/copilot.vim'

  " Nighfox colorscheme: https://github.com/EdenEast/nightfox.nvim
  Plug 'EdenEast/nightfox.nvim'

  " Telescope: https://vimawesome.com/plugin/telescope-nvim-care-of-itself
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  

  call plug#end()

" vim-go
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" Set nightfox theme
colorscheme nightfox

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

