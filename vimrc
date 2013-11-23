filetype plugin indent on
syntax on

" Bundles
source ~/.vim/bundles.vim

let mapleader = ","

set guifont=Monaco:h15
set background=dark
colorscheme Solarized

imap >Ins> <Esc>i

" Main Configuration
set history=1000
set shm=atI
set noerrorbells
set termencoding=utf-8
set nocursorline
set nocursorcolumn
set scrolljump=7
set scrolloff=7
set noswapfile
set grepprg=ack
set autoindent
set nowrap
set list
set listchars=trail:⋅,nbsp:⋅
set shiftround
set nofoldenable
set showcmd
set ttyfast
set tags+=tags

" Search
set ignorecase
set smartcase
set hlsearch
set incsearch
set laststatus=2

" Indentation
set expandtab ts=4 sw=4 ai
set hidden
set splitbelow splitright

" Folds
set foldmethod=indent
set foldnestmax=3
set nofoldenable

" Indentation
autocmd FileType javascript setlocal expandtab shiftwidth=2 softtabstop=2 cindent
autocmd FileType ruby setlocal expandtab shiftwidth=2 softtabstop=2 cindent
autocmd FileType *.ejs setlocal expandtab shiftwidth=2 softtabstop=2 cindent
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4 cindent
au BufNewfile,BufRead *.tpl set filetype=html
au BufNewFile,BufRead *.ejs set filetype=html

" Settings
for fpath in split(globpath('~/.vim/settings', '*.vim'), '\n')
  exe 'source' fpath
endfor

autocmd! bufwritepost .vimrc source ~/.vim/vimrc
