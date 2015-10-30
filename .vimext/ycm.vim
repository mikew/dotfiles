" YouCompleteMe
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_complete_in_comments = 1
"let g:ycm_filetype_whitelist = { 'cs': 1 }
"let g:ycm_filetype_specific_completion_to_disable = { 'cs': 1 }
let g:ycm_collect_identifiers_from_tags_files = 1
"let g:ycm_key_invoke_completion = '<S-Tab>'
"let g:ycm_key_invoke_completion = '<c-space>'
"set completeopt-=preview

let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,coffee,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }
