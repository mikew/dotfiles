" To hell with Ex mode
map Q <Nop>
syntax on

set mouse=a
set synmaxcol=200
set shiftwidth=2
set softtabstop=-1
set background=dark
set noshowmode
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set wildmenu            " enhanced command completion

set nobackup            " do not write backup files
set noswapfile          " do not write .swp files
set undofile

autocmd BufEnter * set iskeyword+=-

" Highlight line and cursor
set cursorline
"set cursorcolumn

" Highlight over 80 characters
set colorcolumn=80
"autocmd BufEnter * highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"autocmd BufEnter * match OverLength /\%81v.\+/

" No bells
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
let mapleader = "\\"
let maplocalleader = "\\"

" folding
if has("folding")
  set foldcolumn=0        " columns for folding
  set foldmethod=indent
  set foldlevel=9
  set nofoldenable        "dont fold by default "
endif
