syntax on
filetype on
filetype plugin on 
filetype indent on

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

Plugin 'fatih/vim-go'

Plugin 'tpope/vim-fugitive'

"Plugin 'nvie/vim-flake8'

Plugin 'joshdick/onedark.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'scrooloose/syntastic'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'w0ng/vim-hybrid'

"Plugin 'vim-scripts/indentpython.vim'
call vundle#end()

" Vim Airline
set laststatus=2
set t_Co=256
let g:airline_theme='wombat'
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
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Shortcuts
nnoremap <leader>o :NERDTreeToggle<CR>
nnoremap <leader>k :bnext<CR>
nnoremap <leader>j :bprevious<CR>
nnoremap <leader>q :bd<CR>
nnoremap <leader>n :edit<CR>
nnoremap <leader>v :vsplit<CR>

" Color scheme
colorscheme onedark
let g:onedark_terminal_italics = 1
set guifont=Inconsolata
