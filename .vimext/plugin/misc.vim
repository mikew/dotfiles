"colorscheme base16-tomorrow
"let g:dotvim_colorscheme = 'base16-tomorrow'
"set iskeyword+=,-

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

let g:syntastic_javascript_checkers = ['jsxhint']
let g:syntastic_debug_file = '~/Desktop/syntastic.log'
"let g:syntastic_python_flake8_args='--ignore=E501'
"
" Automatically resize splits when resizing window
"if has("gui_running")
  "if has("autocmd")
    "autocmd VimResized * wincmd =
  "endif
"endif

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
"let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsExpandTrigger = "<nop>"
let g:ulti_expand_or_jump_res = 0
function ExpandSnippetOrCarriageReturn()
  let snippet = UltiSnips#ExpandSnippetOrJump()
  if g:ulti_expand_or_jump_res > 0
    return snippet
  else
    return "\<CR>"
  endif
endfunction
"inoremap <expr> <CR> pumvisible() ? "\<C-R>=ExpandSnippetOrCarriageReturn()\<CR>" : "\<CR>"

let g:endwise_no_mappings = 1
inoremap <expr> <C-X><CR> pumvisible() ? "\<C-R>=ExpandSnippetOrCarriageReturn()\<CR>" : "\<CR>\<C-R>=EndwiseAlways()\<CR>"
inoremap <expr> <CR> pumvisible() ? "\<C-R>=ExpandSnippetOrCarriageReturn()\<CR>" : "\<CR>\<C-R>=EndwiseDiscretionary()\<CR>"
