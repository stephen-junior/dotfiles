call pathogen#infect()

set number
set autoindent
filetype plugin indent on
set t_Co=256
syntax enable
colorscheme Monokai
set mouse=a

set encoding=utf-8
set fileencoding=utf-8

set autoindent
set expandtab
set shiftwidth=2
set tabstop=2

" Keybindings
map <F7> gT
map <F8> gt
map <F9> :NERDTreeToggle<CR>
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-P> :call PhpDocSingle()<CR> 
vnoremap <C-P> :call PhpDocRange()<CR> 

" Save swap files in a temp directory
set backupdir=~/.tmp,/var/tmp,/tmp
set directory=~/.tmp,/var/tmp,/tmp

" Automatically loads any .lvimrc (local vimrc) file
" Doesn't throw an error if the file doesn't exist
silent! source .lvimrc
