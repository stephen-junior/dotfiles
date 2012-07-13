call pathogen#infect()

let mapleader=","

" Mainly visual stuff
set number
set relativenumber
set cursorline
set colorcolumn=85
set mouse=a
set wildmenu
set wildmode=list:longest
set ttyfast
set laststatus=2
set list
set listchars=trail:◃,nbsp:•
set t_Co=256
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
syntax enable

" Events
au BufNewFile,BufRead *.html.twig set filetype=htmldjango
au BufNewFile,BufRead *.rst.inc   set filetype=rst
au FocusLost *:wa " Automatically save files on focus lost

" Files related stuff
set ff=unix
set encoding=utf-8
set fileencoding=utf-8

" Tabs & co
filetype plugin indent on
set autoindent
set expandtab
set shiftwidth=2
set tabstop=2
set shiftround

" Search stuff
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <LEADER><SPACE> :noh<CR>

" Keybindings
map <F3> :!clear && ruby %<CR> " execute the current ruby file
map <F4> :call FutureShock()<CR>
map <F5> :tabnew<CR>
map <F6> :tabclose<CR>
map <F7> gT
map <F8> gt
map <F9> :NERDTreeToggle<CR>
map <S-W> <Plug>CamelCaseMotion_w
map <S-B> <Plug>CamelCaseMotion_b
map <S-E> <Plug>CamelCaseMotion_e

" Forget about the arrow keys!
nnoremap <UP>    <NOP>
nnoremap <DOWN>  <NOP>
nnoremap <LEFT>  <NOP>
nnoremap <RIGHT> <NOP>
inoremap <UP>    <NOP>
inoremap <DOWN>  <NOP>
inoremap <LEFT>  <NOP>
inoremap <RIGHT> <NOP>

" Save swap files in a temp directory
set backupdir=~/.tmp,/var/tmp,/tmp
set directory=~/.tmp,/var/tmp,/tmp

" Automatically loads any .lvimrc (local vimrc) file
" Doesn't throw an error if the file doesn't exist
silent! source .lvimrc

" Remove trailing whitespaces, replace tabs and non-breaking spaces with spaces
function! FutureShock()
  silent! %retab
  silent! %s/\%u00a0/ /
  silent! %s/\s\+$//
endfunction
