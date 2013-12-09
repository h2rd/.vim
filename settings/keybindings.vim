" Show or hide numbers and set or unset wrap
map <F2> :set number!<Bar>set number?<CR>
map <F3> :set wrap!<Bar>set wrap?<CR>

" Bind cmd+/ to comment line
nmap <D-/> <C-_><C-_>
vmap <D-/> <C-_><C-_>gv
imap <D-/> <C-_><C-_>

nmap <C-k> dd
nmap <C-o> O<esc>

" Copy line up and down
nmap <S-up> yykp
nmap <S-down> yyp
nmap <D-]> >>
nmap <C-t> >>
vmap <D-]> >gv
nmap <D-[> <<
vmap <D-[> <gv

nmap Y y$

map <Leader>, <C-^>

map <leader>w :w!<cr>
map <leader>W :wall!<cr>

map <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

inoremap () ()<Left>
inoremap {} {}<Left>
inoremap [] []<Left>
inoremap <> <><Left>
inoremap "" ""<Left>
inoremap '' ''<Left>

nnoremap <Leader>S :%s/<C-r>=expand("<cword>")<CR>//<Left>
nnoremap J mzJ`z
nnoremap vv viw
nnoremap cc ciw

" fast edit my .vimrc file
nnoremap <leader>v :e ~/.vim/vimrc<cr>

" Next search
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> g# g#zz

" Sort things
vnoremap <leader>s :sort<CR>

" The Smash Escape
inoremap jk <Esc>
inoremap kj <Esc>
