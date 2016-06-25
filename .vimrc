set nocompatible
set encoding=utf-8
syntax on
filetype on
filetype plugin on
filetype indent on
set number
set ruler

" flagging whitespaces
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Python rules 
au BufRead,BufNewFile *.py set tabstop=4
au BufRead,BufNewFile *.py set softtabstop=4
au BufRead,BufNewFile *.py set shiftwidth=4
"au BufRead,BufNewFile *.py set textwidth=79
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

Plugin 'vim-scripts/indentpython.vim'

Plugin 'fatih/vim-go'

Plugin 'tpope/vim-fugitive'

Plugin 'nvie/vim-flake8'

"Plugin 'yggdroot/indentline'

Plugin 'Valloric/YouCompleteMe'

Plugin 'joshdick/onedark.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'scrooloose/syntastic'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'w0ng/vim-hybrid'

call vundle#end()

" Vim Airline
set laststatus=2
set t_Co=256
let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Syntastic
execute pathogen#infect()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']

" Flake8
let python_highlight_all = 1
syntax on

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

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

" Color scheme
colorscheme onedark
let g:onedark_terminal_italics = 1
set guifont=Inconsolata
" Indent guides
"let g:indentLine_color_term = 239
"let g:indentLine_char = '|'
