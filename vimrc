"
" Author: Michael Spohn
" File: .vimrc
" Github: https://github.com/mikeLspohn/dotfiles/vimrc
"

set nocompatible
filetype off

set nobackup
set noswapfile

" VUNDLE/PLUGIN SETTINGS
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'

" File System
Plugin 'scrooloose/nerdtree'

" Navigation
Plugin 'ctrlpvim/ctrlp.vim'

" Status Bar Settings
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'

" Syntax
Plugin 'scrooloose/syntastic'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/html5.vim'
Plugin 'heartsentwined/vim-emblem'
Plugin 'isRuslan/vim-es6'
Plugin 'mxw/vim-jsx'
Plugin 'elixir-lang/vim-elixir'

" Language/Framework Specific
Plugin 'slashmili/alchemist.vim'
Plugin 'moll/vim-node'

" Git
Plugin 'tpope/vim-fugitive'

" Utilities
Plugin 'Raimondi/delimitMate'


call vundle#end()
filetype plugin indent on


" PLUGIN SETTINGS
let g:airline_powerlin_fonts = 1
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Syntastic
let g:syntastic_javascript_checkers = ['standard']
let g:syntastic_check_on_open = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }



" GENERAL SETTINGS

" tabs/spaces
set tabstop=4
set shiftwidth=2
set expandtab
set softtabstop=2
set autoindent
set smartindent

" search settings
set incsearch 
set hlsearch
nmap <silent> <BS> :nohlsearch<CR> " remove search hl with backspace

" autocomplete filepaths
set wildmode=longest,list,full
set wildmenu

" allow backspace in insert mode
set backspace=indent,eol,start

" faster grep
set grepprg=ag



" KEY MAPPINGS
nnoremap <F3> :NumbersToggle<CR>
:inoremap jk <esc>
imap <C-c> <CR><Esc>O

" Plugins Key Mappings
nnoremap <C-e> ::NERDTreeToggle<cr>
nnoremap <C-y> :SyntasticCheck<CR> :SyntasticToggleMode<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'



" THEME SETTINGS
set number
syntax enable
set background=dark
colorscheme solarized
