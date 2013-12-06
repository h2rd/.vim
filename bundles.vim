set rtp +=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles
Bundle 'gmarik/vundle'

" my Bundles
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'mattn/zencoding-vim'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-rsi'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-unimpaired'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle 'h2rd/vim-snipmate-mocha'
Bundle 'pangloss/vim-javascript'
Bundle "honza/vim-snippets"
Bundle 'jelera/vim-javascript-syntax'
Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-scripts/tComment'
Bundle 'vim-scripts/matchit.zip'
Bundle 'vim-scripts/AutoComplPop'
Bundle 'vim-scripts/L9'
Bundle 'gregsexton/MatchTag'
Bundle 'kien/ctrlp.vim'
Bundle 'duff/vim-bufonly'
Bundle 'vim-scripts/Tabular'
Bundle 'digitaltoad/vim-jade'
Bundle 'vim-scripts/AutoTag'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'qstrahl/vim-matchmaker'
Bundle 'bling/vim-airline'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'vim-scripts/ZoomWin'
Bundle 'bogado/file-line'
Bundle 'rkulla/pydiction'
Bundle 'davidhalter/jedi-vim'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'

filetype plugin indent on
autocmd! bufwritepost .vimrc source ~/.vim/vimrc
