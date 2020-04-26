function try-source() {
  if [ -r "$1" ]; then
    source "$1"
  fi
}

sources=(
  ~/.path
  ~/.bash/locale
  ~/.bash/bash_settings
  ~/.bash/cli
  ~/.bash/completion
  ~/.bash/git
  ~/.bash/navigation
  ~/.bash/network
  ~/.bash/prompt
  ~/.bash/ruby
)

for file in "${sources[@]}"; do
  try-source "$file"
done
unset file

if [[ $OSTYPE == darwin* ]] ; then
  try-source ~/.bash/osx
fi

if [ -f ~/.localrc ]; then
  source ~/.localrc
fi
