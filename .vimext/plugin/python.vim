" https://github.com/klen/python-mode#settings
"let g:pymode = 1
let g:pymode_doc = 0
"let g:pymode_run = 1
"let g:pymode_lint = 1
let g:pymode_rope = 0
let g:pymode_folding = 0
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
"let g:python_highlight_all = 1
"let g:pymode_syntax_highlight_self = g:pymode_syntax_all
let g:pymode_lint_write = 0
let g:NERDTreeWinPos = "right"
let g:syntastic_javascript_checkers = ['jsxhint']
let g:syntastic_debug_file = '~/Desktop/syntastic.log'
"let g:syntastic_python_flake8_args='--ignore=E501'

" E125: Makes indenting seem inconsistent with E128.
" E128: You run into E501 much quicker.
" E501: Django makes it really hard to keep lines short.
let g:pymode_lint_ignore = "E501,E125,E128"
"let g:pymode_lint_checker = "pyflakes"

" Highlighting for .pys files (used in Plex)
autocmd BufNewFile,BufEnter *.pys set ft=python
"autocmd filetype python syn keyword pythonBuiltinObj self cls

" Add cwd to vim python path
python <<EOF
import sys
import vim
try:
  sys.path.insert(0, vim._getcwd())
except:
  pass
EOF

" make Python follow PEP8 for whitespace ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python setlocal tabstop=4 shiftwidth=4
