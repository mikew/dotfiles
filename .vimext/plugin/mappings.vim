" Make CMD-Left go to ^ and not 0
call janus#add_delayed_command('map <D-Left> ^')
call janus#add_delayed_command('imap <D-Left> <Esc>I')

"make Y consistent with C and D
nnoremap Y y$
