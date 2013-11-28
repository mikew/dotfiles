export PATH="$HOME/bin:$PATH"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
#for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
for file in ~/.{path,bash/exports,bash/aliases,bash/functions,bash/completion,bash/prompt,bash/rbenv}; do
  [ -r "$file" ] && source "$file"
done
unset file

if [[ $OSTYPE == darwin* ]] ; then
  source ~/.osx/exports
  source ~/.osx/aliases
  source ~/.osx/functions
fi

[ -f ~/.localrc ] && source ~/.localrc
