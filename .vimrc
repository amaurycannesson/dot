let mapleader=","
set encoding=utf-8
set nocompatible
set hidden                      " Don't close buffers
set noswapfile                  " No swap files

" Plug automatic installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'dracula/vim'
call plug#end()

syntax on
let g:airline_theme='dracula'
colorscheme dracula

if (has("termguicolors"))
  set termguicolors
endif

" Spaces & Tabs
set tabstop=4                   " number of visual spaces per TAB
set softtabstop=0               " number of spaces in tab when editing
set expandtab                   " tabs are spaces
set shiftwidth=4
set smarttab
set backspace=indent,eol,start  " allow backspacing over everything in insert mode

" UI Config
set number                      " show line numbers
set showcmd                     " show command in bottom bar
set cursorline                  " highlight current line
set autoindent                  " Always set autoindenting on
filetype plugin indent on       " load filetype-specific indent files
set wildmenu                    " visual autocomplete for command menu
set lazyredraw                  " redraw only when we need to.
set showmatch                   " highlight matching [{()}]
set nowrap                      " Dont't wrap lines
set splitbelow                  " When horizontal split, open the buffer below
set splitright                  " When vertical split, open the buffer on the right

" Searching
set ignorecase                  " lowercase searches are case insensitive
set smartcase                   " search with one uppercase are case sensitive
set incsearch                   " search as characters are entered
set hlsearch                    " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Movement
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" leader direction to change pane
noremap <leader>l <C-w>l
noremap <leader>h <C-w>h
noremap <leader>j <C-w>j
noremap <leader>k <C-w>k


noremap <leader>n :NERDTreeToggle<CR>
