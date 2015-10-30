" Easily generate UUIDs
fu! GenerateUUIDAfterCursor()
python << EOF
import uuid
import vim

# output a uuid to the vim variable for insertion below
vim.command("let generatedUUID = \"%s\"" % str(uuid.uuid4()))
EOF

" insert the python generated uuid into the current cursor's position
:execute "normal a" . generatedUUID . ""
endfunction
noremap <Leader>r :call GenerateUUIDAfterCursor()<CR>

fu! GenerateUUIDBeforeCursor()
python << EOF
import uuid
import vim

# output a uuid to the vim variable for insertion below
vim.command("let generatedUUID = \"%s\"" % str(uuid.uuid4()))
EOF

" insert the python generated uuid into the current cursor's position
:execute "normal i" . generatedUUID . ""
endfunction

" initialize the generateUUID function here and map it to a local command
noremap <Leader>R :call GenerateUUIDBeforeCursor()<CR>
