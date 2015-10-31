" Change default key mapping in order to eliminate delay related with
" NERDTree using the same starting sequence <leader>n
silent! nunmap <leader>nr
map <leader>rn :NarrowRegion<CR>
