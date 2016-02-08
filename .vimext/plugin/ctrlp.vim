" Use git for Ctrl+P
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" Use matcher for Ctrl+P
"let g:path_to_matcher = "/usr/local/bin/matcher"
"let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files . -co --exclude-standard']
"let g:ctrlp_match_func = { 'match': 'GoodMatch' }
"
"function! GoodMatch(items, str, limit, mmode, ispath, crfile, regex)
"
"  " Create a cache file if not yet exists
"  let cachefile = ctrlp#utils#cachedir().'/matcher.cache'
"  if !( filereadable(cachefile) && a:items == readfile(cachefile) )
"    call writefile(a:items, cachefile)
"  endif
"  if !filereadable(cachefile)
"    return []
"  endif
"
"  " a:mmode is currently ignored. In the future, we should probably do
"  " something about that. the matcher behaves like "full-line".
"  let cmd = g:path_to_matcher.' --limit '.a:limit.' --manifest '.cachefile.' '
"  if !( exists('g:ctrlp_dotfiles') && g:ctrlp_dotfiles )
"    let cmd = cmd.'--no-dotfiles '
"  endif
"  let cmd = cmd.a:str
"
"  return split(system(cmd), "\n")
"
"endfunction

"let g:ctrlp_map = ''
"let g:ctrlp_custom_ignore = {
  "\ 'dir':  '\v[\/]\.(git|hg|svn)$',
  "\ 'file': '\.pyc$\|\.pyo$\|\.rbc$|\.rbo$\|\.class$\|\.o$\|\~$\',
  "\ }

"if has("gui_macvim") && has("gui_running")
  "map <D-t> :CtrlP<CR>
  "imap <D-t> <ESC>:CtrlP<CR>
"endif

let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:25'
