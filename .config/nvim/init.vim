set showmatch
set mouse=v
set hlsearch
set incsearch
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set number
set wildmode=longest,list
syntax on
set mouse=a
set clipboard=unnamedplus
set cursorline
set ttyfast

call plug#begin()
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'sainnhe/gruvbox-material'
call plug#end()

if has('termguicolors')
    set termguicolors
endif

set background=dark
colorscheme gruvbox-material

