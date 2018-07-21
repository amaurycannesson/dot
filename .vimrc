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
Plug 'alvan/vim-closetag'       " Close tag
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'jiangmiao/auto-pairs'     " Insert or delete brackets, parens, quotes in pair
Plug 'scrooloose/nerdcommenter' " Comment functions
Plug 'scrooloose/nerdtree'      " File explorer
Plug 'vim-airline/vim-airline'  " Lean & mean status/tabline
Plug 'kien/ctrlp.vim'           " Fuzzy file finder
Plug 'airblade/vim-gitgutter'   " Show git diff in the gutter
Plug 'valloric/youcompleteme'   " Auto completion
Plug 'pangloss/vim-javascript'  " JS support
Plug 'mxw/vim-jsx'              " JSX support
Plug 'rust-lang/rust.vim'       " Rust support
call plug#end()

" Colors
syntax on
set background=dark
let g:enable_bold_font = 1
colorscheme hybrid_material

" Spaces & Tabs
set tabstop=4                   " number of visual spaces per TAB
set softtabstop=4               " number of spaces in tab when editing
set expandtab                   " tabs are spaces
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

" Folding
set foldenable                  " enable folding
set foldlevelstart=10           " open most folds by default
set foldnestmax=10              " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent           " fold based on indent level

" Movement
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" leader direction to change pane
noremap <leader>l <C-w>l                                                                                                                                                                                      
noremap <leader>h <C-w>h
noremap <leader>j <C-w>j
noremap <leader>k <C-w>k

" NERD Commenter
let g:NERDSpaceDelims = 1               " Add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1           " Use compact syntax for prettified multi-line comments 
let g:NERDDefaultAlign = 'left'         " Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDCommentEmptyLines = 1         " Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDTrimTrailingWhitespace = 1    " Enable trimming of trailing whitespace when uncommenting

noremap <leader>n :NERDTreeToggle<CR>




