" MKT vim configuraion



set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set number
set ruler
set hlsearch
set encoding=utf8

" Always display the status line
set laststatus=2

" Enable Elite mode, No ARRRROWWS!!!!
 let g:elite_mode=1

" Enable highlighting of the current line
 set cursorline


" Disable file type for vundle
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Utility
Plugin 'scrooloose/nerdtree'
" OSX stupid backspace fix
set backspace=indent,eol,start

call vundle#end()            " required
filetype plugin indent on    " required
" END Vundle Configuration 

if has("autocmd")
	filetype on
	filetype indent on
	filetype plugin on 
endif

syntax on

" Maps jj for ESC 
imap jj <Esc> 


map <C-n> :NERDTreeToggle<CR>
