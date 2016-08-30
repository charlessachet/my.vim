set autoindent
set copyindent
set nocompatible
set encoding=utf-8
set noswapfile
set wildignore=*.swp,*.bak,*.pyc,*.class,*.o,*.so

" Don't have to save current buffer to open another one
set hidden

"Automatically re-read file if it has changed
set autoread

" Had this problem on one of the dev envs:
" http://vim.wikia.com/wiki/Backspace_and_delete_problems
set backspace=2 " make backspace work like most other apps

"display tabs and trailing spaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

"nvim config
if !has('nvim')
    set ttymouse=xterm2
endif

"when it happens
filetype on
filetype plugin on
filetype indent on
syntax on

" flagging whitespaces
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Python rules 
au BufRead,BufNewFile *.py set tabstop=4
au BufRead,BufNewFile *.py set softtabstop=4
au BufRead,BufNewFile *.py set shiftwidth=4
au BufRead,BufNewFile *.py set textwidth=79
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.py set autoindent
au BufRead,BufNewFile *.py set fileformat=unix

" js, html and css indentation
au BufNewFile,BufRead *.js, *.html, *.css set tabstop=2
au BufNewFile,BufRead *.js, *.html, *.css set softtabstop=2
au BufNewFile,BufRead *.js, *.html, *.css set shiftwidth=2

" Vundle Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'davidhalter/jedi-vim'

Plugin 'klen/python-mode'

Plugin 'hynek/vim-python-pep8-indent'

Plugin 'fatih/vim-go'

Plugin 'joshdick/onedark.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'
call vundle#end()

" Vim Airline
set laststatus=2
set t_Co=256
let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Shortcuts
nnoremap <leader>o :NERDTreeToggle<CR>
nnoremap <leader>k :bnext<CR>
nnoremap <leader>j :bprevious<CR>
nnoremap <leader>q :bd<CR>
nnoremap <leader>n :edit<CR>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>, :cprev<CR>
nnoremap <leader>. :cnext<CR>
nnoremap <leader><C-Up> :m .-2<CR>
nnoremap <leader><C-Down> :m .+1<CR>
nnoremap <leader> :set invpaste paste?<CR>
set pastetoggle=<leader><C>p

" Color scheme
colorscheme onedark
let g:onedark_terminal_italics = 1
set guifont=Inconsolata
