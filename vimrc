filetype plugin indent on
syntax on

" Bundles
source ~/.vim/bundles.vim

" Main Configuration
colorscheme jellybeans

let mapleader = ","
set history=500
set autoread                " auto reload changed files
set autowrite               " automatically save before commands like :next and :make
set termencoding=utf-8
set noswapfile
set linebreak
set nowrap
set showcmd
set ttyfast
set grepprg=ack
set laststatus=2
set scrolloff=4             " min 4 symbols bellow cursor
set sidescroll=4
set sidescrolloff=10
set synmaxcol=800
set numberwidth=1           " Keep line numbers small if it's shown
set nu                      " Showing line numbers
set fo-=t
set infercase

" Folding
if has('folding')
    set foldmethod=marker   " Fold on marker
    set foldlevel=999       " High default so folds are shown to start
endif

" X-clipboard support
if has('unnamedplus')
    set clipboard+=unnamed     " enable x-clipboard
endif

" Term
" set mouse=a                    " Enable mouse usage (all modes) in terminals
" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200
if &term =~ "xterm"
    set t_Co=256            " set 256 colors
endif

" Matching characters
set showmatch               " Show matching brackets
set matchpairs+=<:>         " Make < and > match as well

" Display options
set title                   " show file name in window title
set visualbell              " mute error bell
set list
set listchars=tab:⇥\ ,trail:⋅,nbsp:⋅

" Tab options
set autoindent              " copy indent from previous line
set smartindent             " enable nice indent
set expandtab               " tab with spaces
set smarttab                " indent using shiftwidth"
set shiftwidth=4            " number of spaces to use for each step of indent
set softtabstop=4           " tab like 4 spaces
set shiftround              " drop unused spaces

" Search options
set hlsearch                " Highlight search results
set ignorecase              " Ignore case in search patterns
set smartcase               " Override the 'ignorecase' option if the search pattern contains upper case characters
set incsearch               " While typing a search command, show where the pattern
set hidden
set splitbelow splitright

autocmd FileType javascript setlocal expandtab shiftwidth=2 softtabstop=2 cindent
autocmd FileType ruby setlocal expandtab shiftwidth=2 softtabstop=2 cindent
autocmd FileType *.ejs setlocal expandtab shiftwidth=2 softtabstop=2 cindent
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4 cindent
autocmd BufNewfile,BufRead *.tpl set filetype=html
autocmd BufNewFile,BufRead *.ejs set filetype=html

autocmd WinLeave * set nocursorline
autocmd WinEnter * set cursorline

" Some gui settings
if has("gui_running")
    set guioptions=agimP
    set guifont=Monaco:h13
endif

" Require settings
for fpath in split(globpath('~/.vim/settings', '*.vim'), '\n')
  exe 'source' fpath
endfor

" see :help 'secure'.
set secure
