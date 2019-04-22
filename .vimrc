"# vim: set foldmethod=marker:

" Be improved
set nocompatible

" {{{ Settings

set modeline                    " allow file-specific settings
set path+=**                    " allow :find to search subdirectories
syntax enable                   " syntax highlighting
set hlsearch                    " highlight search results
set background=dark             " use color scheme for dark background
set ruler                       " show line and column number
set showcmd                     " show partial commands
set laststatus=2                " always show status bar
set wildmenu                    " enhanced command-line completion
set wildmode=longest:full,full  " completion behavior
set backspace=indent,eol,start  " make backspace behave in a sane way
set cursorline                  " highlight current line
set foldmethod=syntax           " fold on syntax by default
set foldlevel=99                " open all folds by default
set splitright                  " vertical splits open on the right
set splitbelow                  " horizontal splits open below

" Tab behavior
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set scrolloff=4

" 1 sec delay for mappings, 0 sec delay for key codes. Makes BufferLeave events trigger instantly.
set timeoutlen=1000 ttimeoutlen=0

" }}}

" {{{ Highlights and autocmds

" Highlight trailing whitespace
highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile * match BadWhitespace /\s\+$/
" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw 2match BadWhitespace /^\t\+/

" Change StatusLine color to indicate insert mode
autocmd InsertEnter * highlight StatusLine ctermfg=Red
autocmd InsertLeave * highlight StatusLine ctermfg=Green
highlight StatusLine ctermfg=Green

" Highlight folds
highlight Folded ctermbg=Cyan ctermfg=White

" }}}

" {{{ Mappings

" Disable arrow keys - use hjkl
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" }}}
