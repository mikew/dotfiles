colorscheme base16-tomorrow
let g:dotvim_colorscheme = 'base16-tomorrow'
set iskeyword=@,48-57,_,192-255,-

let g:jsx_ext_required = 0
let base16colorspace=256
let g:airline_powerline_fonts = 1
"set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅

" Stop with trying to be cute and hide noisy quotes in JSON
let g:vim_json_syntax_conceal = 0

" Highlight word under cursor like IDEs
"autocmd! CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))

" iOS tweak files?
au BufNewFile,BufRead *.xm,*.xmm,*.l.mm setf logos

" TODO ???
nnoremap <C-]> :execute 'tj' expand('<cword>')<CR>zv

" Automatically resize splits when resizing window
if has("gui_running")
  if has("autocmd")
    autocmd VimResized * wincmd =
  endif
endif

