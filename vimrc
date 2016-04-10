set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-surround'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-easytags'
Plugin 'sjl/gundo.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-repeat'
Plugin 'plasticboy/vim-markdown'
Plugin 'wting/rust.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-dispatch'
Plugin 'elixir-lang/vim-elixir'


call vundle#end()            " required
filetype plugin indent on    " required


call pathogen#infect()
call pathogen#helptags()

syntax enable
set background=dark
set t_Co=256
"colorscheme solarized
colorscheme 256_jungle

" Wrap too long lines
set wrap

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

" Expand the command line using tab
set wildchar=<Tab>

" show line numbers
set number

set foldmethod=marker

" enable all features
set nocompatible

" powerful backspaces
set backspace=indent,eol,start

" highlight the searchterms
set hlsearch

" jump to the matches while typing
set incsearch

" ignore case while searching
set ignorecase
set smartcase

" don't wrap words
set textwidth=0

" history
set history=400

" 1000 undo levels
set undolevels=1000

" show a ruler
set ruler

" show partial commands
set showcmd

" show matching braces
set showmatch

" write before hiding a buffer
set autowrite

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

set fileencodings=utf-8,shift-jis,latin1,iso-2022-jp,euc-jp,cp932,default

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set go-=l
set go-=R
set go-=L
set go-=F
set go-=b

nnoremap <silent> <F8> :TlistToggle<CR>

set laststatus=2

set runtimepath^=~/.vim/bundle/ctrlp.vim

autocmd BufWritePre * :%s/\s\+$//e

if has('cscope')
    set cscopetag cscopeverbose

    if has('quickfix')
        set cscopequickfix=s-,c-,d-,i-,t-,e-
    endif

    cnoreabbrev csa cs add
    cnoreabbrev csf cs find
    cnoreabbrev csk cs kill
    cnoreabbrev csr cs reset
    cnoreabbrev css cs show
    cnoreabbrev csh cs help

    command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
endif

set t_ut=
let mapleader = ","

nmap <F3> :NERDTreeToggle<CR>
nmap <F4> :TagbarToggle<CR>

let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
\ }

au FocusLost * silent! wa
set relativenumber

set splitbelow
set splitright

function! FindConflict()
    try
        /<<<<<<<
    catch
    endtry
endfunction

nnoremap \ :call FindConflict()<CR>

set scrolloff=5

let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['java'] }

au FileType coq call coquille#FNMapping()

autocmd BufNewFile,BufRead *.asm set syntax=nasm
autocmd BufNewFile,BufRead *.s set syntax=nasm
autocmd BufNewFile,BufRead *.inc set syntax=nasm

nmap <F5> i<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F5> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

" merlin ocaml magic
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

set rtp^="/home/jmbto/.opam/4.02.3/share/ocp-indent/vim"

set updatetime=250

au BufNewFile,BufRead *.cpp set syntax=cpp11

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
