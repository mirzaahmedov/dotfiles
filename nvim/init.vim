call plug#begin()

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Gruvbox Theme
Plug 'morhetz/gruvbox'

" Liteline
Plug 'itchyny/lightline.vim'

" Fuzzy file search
Plug 'ctrlpvim/ctrlp.vim'

" Autocomplete 
Plug 'neoclide/coc.nvim', {'branch': 'release'}  

" Initialize plugin system
call plug#end()

set relativenumber
set smartindent
set autoindent
set cursorline
set tabstop=2 
set softtabstop=2
set shiftwidth=2
set expandtab

colorscheme gruvbox

inoremap jj <Esc>
