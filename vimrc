" Pathogen                                
call pathogen#runtime_append_all_bundles()
call pathogen#helptags() 

syntax on

if has("autocmd") 
    filetype plugin indent on
endif        

filetype on
filetype plugin indent on

" Pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible
set number
set guioptions-=m
set guioptions-=T
set colorcolumn=79
set nowrap

" Turn on smart indent
set bs=2
set tabstop=4
set expandtab
set smarttab
set softtabstop=4
set shiftwidth=4
set ai

" Search
set incsearch
set ignorecase
set smartcase

" Color scheme
set t_Co=256
let g:solarized_termcolors=16
set background=dark
colorscheme solarized

" Folding
set foldmethod=indent
set foldlevel=99

" Python syntax
let python_highlight_all=1
setlocal keywordprg=pydoc

" Minibufexpl
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Django templates
au! BufNewFile,BufRead *.html set filetype=htmldjango

" NERDTree
nmap <silent> <F2> :NERDTreeToggle<CR>
imap <silent> <F2> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

imap <silent> <F3> :TlistToggle<CR>
nmap <silent> <F3> :TlistToggle<CR>

" No switch keyboard layout for commands in normal mode.
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" Leader key
let mapleader=','

" 2 spaces tab indent for HTML Files
autocmd FileType htmldjango :setlocal sw=2 ts=2 sts=2

" Remove trailing whitespaces
autocmd BufWritePre *.py :%s/\s\+$//e
