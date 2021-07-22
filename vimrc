" Force read encoding
set encoding=utf-8

set nocompatible

" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
Plug 'janko/vim-test'
Plug 'junegunn/fzf'
Plug 'junegunn/vim-emoji'
Plug 'junegunn/fzf.vim'

Plug 'liuchengxu/space-vim-dark'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'slashmili/alchemist.vim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-emoji'
call plug#end()

filetype plugin indent on
syntax enable

" disable gui cursor styling
set guicursor=

" Move the cursor to the matched string
set incsearch

" Search highlight
set hlsearch

" Avoid lags
set lazyredraw

" Display line numbers
set number
set numberwidth=4

" To display the status line always
set laststatus=2

" New window is put below the current one
set splitbelow

" New window is put right of the current one
set splitright

" Show commands
set showcmd

" Hide mode status (INSERT, VISUAL)
set noshowmode

" Show the cursor position
set ruler

" Allow backspace in insert mode
set backspace=start,eol,indent

" Tab characters entered will be changed to spaces
set expandtab

" Number of space characters inserted for indentation
set shiftwidth=2
set softtabstop=2

" Avoid creation of * .ext files
set nowritebackup
set nobackup
set noswapfile

" Automatically read changes
set autoread

" Hidden buffer instead of close
set hidden

" Moving lines 
nnoremap <silent> <C-k> :move-2<cr>
nnoremap <silent> <C-j> :move+<cr>
nnoremap <silent> <C-h> <<
nnoremap <silent> <C-l> >>
xnoremap <silent> <C-k> :move-2<cr>gv
xnoremap <silent> <C-j> :move'>+<cr>gv
xnoremap <silent> <C-h> <gv
xnoremap <silent> <C-l> >gv
xnoremap < <gv
xnoremap > >gv

" Fzf shortcut
map ff :Files<CR>

" Nerdtree shortcut
map nd<CR> :NERDTree<CR>

" Airline theme
let g:airline_theme='fruit_punch'

" Copy and paste shortcut
set clipboard=unnamed

vnoremap <C-c> "+y
vnoremap <C-p> "+p

" git gutter emoji
let g:gitgutter_sign_added = emoji#for('sparkles')
let g:gitgutter_sign_modified = emoji#for('pencil')
let g:gitgutter_sign_removed = emoji#for('fire')
let g:gitgutter_sign_modified_removed = emoji#for('collision')

" Color scheme
colorscheme space-vim-dark
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE
hi Normal     ctermbg=NONE guibg=NONE
