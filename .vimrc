filetype plugin indent on
" show existing tab with 4 spaces width
 set tabstop=4
" " when indenting with '>', use 4 spaces width
 set shiftwidth=4
" On pressing tab, insert 4 spaces
 set expandtab

if has("autocmd")
	filetype on
	filetype indent on
	filetype plugin on 
endif

syntax on
set number 
set hlsearch
"set background=dark
"colorscheme solarized
function! ResCur()
if line("'\"") <= line("$")
normal! g`"
  return 1
    endif
endfunction

augroup resCur
autocmd!
	autocmd BufWinEnter * call ResCur()
augroup END
imap jj <Esc> 

