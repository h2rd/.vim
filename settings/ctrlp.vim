" CtrlP
" set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<s-space>'
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_clear_cache_on_exit = 1

nnoremap <leader>f :CtrlPRoot<CR>
nnoremap <Leader>b :CtrlPBuffer<cr>
