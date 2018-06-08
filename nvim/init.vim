"""""""""""""""""""""""""""""""""""""""
" Ashwin's vim file
"""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""
" ==> Common options
"""""""""""""""""""""""""""""""""""""""

" Set truecolors
set termguicolors

" Set bash shell
set shell=bash

" Disable swap files
set noswapfile

" Set tab size
set tabstop=2
set sw=2
set smarttab

" Disable wrapping
set nowrap

" Set leader key
let mapleader = " "

" Filetype
filetype on

" Syntax highlighting
syntax on

" Line numbers
set number

" Set no compatible
set nocompatible

" Incremental search
set incsearch

" Enable hidden buffers
set hidden

" Set unnamed register to system clipboard
set clipboard+=unnamed
set clipboard=unnamedplus

" Dark bg
set background=dark

"""""""""""""""""""""""""""""""""""""""
" ==> Mappings
"""""""""""""""""""""""""""""""""""""""

" Open vimrc
nnoremap <leader>ev :e $MYVIMRC<cr>

" Source vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" Save file
nnoremap <leader>w :w<cr>

" jk exits insert mode
inoremap jk <esc>

" Visual movement
nnoremap j gj
nnoremap k gk

" Go to sol and eol faster
nmap H 0
nmap L $

" Turn off highlight search
nnoremap <silent> <leader>/ :nohls<cr>

" Windows and buffer movement
" Move between windows
nnoremap <silent> <leader>k :wincmd k<cr>
nnoremap <silent> <leader>j :wincmd j<cr>
nnoremap <silent> <leader>l :wincmd l<cr>
nnoremap <silent> <leader>h :wincmd h<cr>
" Move windows
nnoremap <silent> <leader>K :wincmd K<cr>
nnoremap <silent> <leader>J :wincmd J<cr>
nnoremap <silent> <leader>L :wincmd L<cr>
nnoremap <silent> <leader>H :wincmd H<cr>
" Close window
nnoremap <silent> <leader>x :wincmd c<cr>
" Delete buffer
nnoremap <silent> <leader>d :bd<cr>
" Change buffer
nnoremap <leader>b :buff
" Next buffer
nnoremap <silent> <leader><tab> :bn<cr>
" Previous buffer
nnoremap <silent> <leader><s-tab> :bp<cr>
" Quit vim
nnoremap <leader>q :q

" Terminal mode exit
tnoremap <C-[> <C-\><C-N>
tnoremap <esc> <C-\><C-N>

" Open NERDTree
nnoremap <silent> <leader>n :NERDTreeToggle<cr>
" Toggle ALE
nnoremap <silent> <leader>A :ALEToggle<cr>
" Next
nnoremap <silent> <leader>a :ALENext<cr>

""""""""""""""""""""""""""""""""""""""""
" ==> Vundle
""""""""""""""""""""""""""""""""""""""""

filetype off
" Set runtime path to vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim

call vundle#begin()

" Vundle
Plugin 'VundleVim/Vundle.vim'
" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Devicons
Plugin 'ryanoasis/vim-devicons'
" NERDTree
Plugin 'scrooloose/nerdtree'
" NERDTree git
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Emmet
Plugin 'mattn/emmet-vim'
" Colorschemes
Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox'
" NERDCommenter
Plugin 'scrooloose/nerdcommenter'
" AleLint
Plugin 'w0rp/ale'
" Vim javascript
Plugin 'pangloss/vim-javascript'
" Typescript
Plugin 'leafgarland/typescript-vim'
" Surround
Plugin 'tpope/vim-surround'
" Dart
Plugin 'dart-lang/dart-vim-plugin'
" CSS color preview
Plugin 'ap/vim-css-color'
" Fish 
Plugin 'dag/vim-fish'
" Auto closing brackets etc
Plugin 'raimondi/delimitmate'
" You Complete Me
Plugin 'valloric/youcompleteme'

call vundle#end()
filetype plugin indent on


"""""""""""""""""""""""""""""""""""""""
" ==> Plugin settings
"""""""""""""""""""""""""""""""""""""""

" Airline
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" NERDTree
let g:NERDTreeWinPos = 'right'
" q works even if nerdtree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Color Scheme
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Indent Lines
let g:indentLine_enable = 0
let g:indentLine_setColors = 0
let g:indentLine_char = '⎸'
let g:indentLine_color_term = 239

" Ale 
let g:ale_linters = {
			\'javascript': ['eslint'],
			\}

" Disable solid color
" hi Normal guibg=NONE ctermbg=NONE
" hi NonText ctermbg=none 
