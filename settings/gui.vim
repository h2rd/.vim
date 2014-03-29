if has('gui_running')
    set guioptions-=T
    set guioptions-=r
    set guioptions-=R
    set guioptions-=l
    set guioptions-=b
    set guioptions=aiA
    set macmeta

    " Map fast tabs
    map <D-1> 1gt
    map <D-2> 2gt
    map <D-3> 3gt
    map <D-4> 4gt
    map <D-5> 5gt
    map <D-6> 6gt
    map <D-7> 7gt
    map <D-8> 8gt
    map <D-9> 9gt
    map <D-0> :tablast<CR>

    " Encoding menu on F12
    set wildmenu
    set wcm=<Tab>
    menu Encoding.cp1251  :e ++enc=cp1251<CR>

    menu Encoding.utf-8   :e ++enc=utf-8<CR>
    map <F12> :emenu Encoding.<Tab>

    " replace find higlight
    noremap <D-M-Left> :tabprevious<cr>
    noremap <D-M-Right> :tabnext<cr>
endif
