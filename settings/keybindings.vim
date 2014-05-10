nmap <C-o> O<esc>

vnoremap < <gv
vnoremap > >gv

nmap Y y$

map <Leader>, <C-^>

map <leader>w :w!<cr>
map <leader>W :wall!<cr>

noremap H ^
noremap L $

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

" prettyprint json
nnoremap <leader>nnp :%!python -m json.tool<cr>

" fast edit my .vimrc file
nnoremap <leader>v :e ~/.vim/vimrc<cr>

" Next search
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *N
nnoremap <silent> # #N

vnoremap <leader>s :sort<CR>

" Select entire buffer
nnoremap vaa ggvGg_

" Window commands
nnoremap <silent> <leader>cj :wincmd j<CR>:close<CR>
nnoremap <silent> <leader>ck :wincmd k<CR>:close<CR>
nnoremap <silent> <leader>ch :wincmd h<CR>:close<CR>
nnoremap <silent> <leader>cl :wincmd l<CR>:close<CR>
nnoremap <silent> <leader>cw :close<CR>

" Allow command line editing like emacs
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-n> <Down>
cnoremap <C-p> <Up>

" emacs style jump to end of line
inoremap <C-e> <C-o>A
inoremap <C-a> <C-o>I

" Toggle paste mode
noremap <leader>p :set paste!<CR>

" Open new tab
nnoremap <silent> <C-W>t :tabnew<CR>

nnoremap <leader>uu :GundoToggle<CR>

nnoremap gI `.
nnoremap <left>  :cprev<cr>zvzz
nnoremap <right> :cnext<cr>zvzz
nnoremap <up>    :lprev<cr>zvzz
nnoremap <down>  :lnext<cr>zvzz

nnoremap <silent> <Esc><Esc> :nohlsearch<CR>
