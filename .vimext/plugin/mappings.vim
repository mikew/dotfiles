" Make CMD-Left go to ^ and not 0
map <D-Left> ^
imap <D-Left> <Esc>I

"make Y consistent with C and D
nnoremap Y y$

" Ctrl-N to disable search match highlight
nmap <silent> <C-N> :silent noh<CR>

" keep selection after in/outdent
vnoremap < <gv
vnoremap > >gv
