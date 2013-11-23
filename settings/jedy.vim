let g:jedi#auto_initialization = 0
let g:jedi#popup_select_first = 0
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#popup_on_dot = 1
let g:jedi#documentation_command = "K"
let g:jedi#completions_command = "<Esc>"
let g:jedi#show_call_signatures = "1"

autocmd FileType python setlocal completeopt-=preview
