if has("autocmd")
    augroup vimrc
        au!

        " Auto reload vim settins
        au! bufwritepost ~/.vimrc source ~/.vimrc
        au! BufWritePost ~/.vim/settings/*.vim source ~/.vimrc
        au! BufWritePost ~/.vim/bundles.vim source ~/.vimrc

        " Only show cursorline in the current window and in normal mode.
        au WinLeave,InsertEnter * set nocursorline
        au WinEnter,InsertLeave * set cursorline

        au BufRead * :set cpoptions+=J

        au InsertEnter * :set listchars-=trail:⌴
        au InsertLeave * :set listchars+=trail:⌴

        " Autosave last session
        " if has('mksession')
        "     au VimLeavePre * exe "mks! " g:SESSION_DIR.'/last.vim'
        " endif

        " Save current open file when window focus is lost
        au FocusLost * if &modifiable && &modified | write | endif

        " Filetypes {{{
        " ---------

        au BufNewFile,BufRead *.json setf javascript
        au BufNewFile,BufRead *.py setl colorcolumn=80

        " }}}

        " Auto close preview window
        autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
        autocmd InsertLeave * if pumvisible() == 0|pclose|endif
    augroup END
endif
