" Be improved
set nocompatible

" Allow :find to search subdirectories
set path+=**

" Syntax highlighting
syntax enable

" Highlight search results
set hlsearch

" I'm using black background, use proper color scheme
set background=dark

" Taskbar
set ruler
set showcmd
set wildmenu

" Tab behavior
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set scrolloff=4

" Make backspace behave in a sane way
set backspace=2

" Highlight trailing whitespace
highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile * match BadWhitespace /\s\+$/
" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw 2match BadWhitespace /^\t\+/
