call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'rking/ag.vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'kien/rainbow_parentheses.vim'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'
Plug 'sjl/gundo.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'airblade/vim-gitgutter'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-repeat'
Plug 'plasticboy/vim-markdown'
Plug 'wting/rust.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-dispatch'
Plug 'elixir-lang/vim-elixir'
Plug 'janko-m/vim-test'
Plug 'neomake/neomake'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'Shougo/unite.vim'
Plug 'rgrinberg/vim-ocaml'

call plug#end()

syntax enable
set background=dark

let g:solarized_termcolors=256
colorscheme solarized

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"autocmd! BufWritePost * Neomake

set wildignore=*.class,*.pyc,*.o,*.cmo,*.cmi,*.cmx,*.cmti,*.cmt
autocmd QuickFixCmdPost [^l]* nested copen
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
set colorcolumn=80

nmap <F5> i<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F5> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

" auto-detect the filetype
filetype plugin indent on

set fileencodings=utf-8,shift-jis,latin1,iso-2022-jp,euc-jp,cp932,default

nnoremap <silent> <F8> :TlistToggle<CR>

set laststatus=2

autocmd BufWritePre * :%s/\s\+$//e

let mapleader = ","

nmap <F3> :NERDTreeToggle<CR>
nmap <F4> :TagbarToggle<CR>

set relativenumber
set scrolloff=5

let g:airline#extensions#tabline#enabled = 1

"update gitgutter faster
set updatetime=250

" for ctrl-space
set hidden

" size of a hard tabstop
set tabstop=4

" size of an indent
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4

" spaces instead of tabs
set expandtab

" guess indentation
set autoindent
set smartindent

set wildignore=*.class,*.pyc,*.o,*.cmo,*.cmi,*.cmx,*.cmti,*.cmt
autocmd QuickFixCmdPost [^l]* nested copen
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
let g:neomake_open_list = 1

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

:map <Leader>m :Neomake!<CR>
