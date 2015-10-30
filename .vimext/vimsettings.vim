" To hell with Ex mode
map Q <Nop>

set mouse=a
set synmaxcol=200
set shiftwidth=2
set softtabstop=2
set background=dark
set noshowmode
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Highlight line and cursor
set cursorline
"set cursorcolumn

" Highlight over 80 characters
set colorcolumn=80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" No bells
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=