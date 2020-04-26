function try-source() {
  if [ -r "$1" ]; then
    source "$1"
  fi
}

sources=(
  .path
  .zsh/locale
  .zsh/zsh_settings
  .zsh/readline_navigation
  .zsh/cli
  .zsh/completion
  .zsh/git
  .zsh/navigation
  .zsh/network
  .zsh/prompt
  .zsh/ruby
)

for file in "${sources[@]}"; do
  try-source "$file"
done
unset file

if [[ $OSTYPE == darwin* ]] ; then
  try-source ~/.zsh/osx
fi

if [ -f ~/.localrc ]; then
  source ~/.localrc
fi
