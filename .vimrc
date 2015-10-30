"
" dotvim : https://github.com/dotphiles/dotvim
"
" Setup vim and load required plugins before dotvim
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

" Call dotvim
source ~/.vim/dotvim.vim

if has("user_commands")
  set nocompatible
  filetype off
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()
  "let g:vundles=['general', 'git', 'hg', 'programming', 'completion', 'php', 'javascript', 'html', 'python', 'ruby', 'misc']
  let g:vundles=[]
  "let g:neocomplcache_enable_at_startup = 1
  " Load 'vundles'
  source ~/.vim/vundles.vim
  " Add extra bundles here...
  " Bundle 'reponame'
endif

" Override colorscheme from base16
"let g:dotvim_colorscheme = 'base16-tomorrow'

" Customize to your needs...
set rtp+=~/.vimext/
source ~/.vimext/before/nerdtree.vim
source ~/.vimrc.after
