function try-source() {
  if [ -r "$1" ]; then
    source "$1"
  fi
}

sources=(
  ~/.path

  ~/.bash/locale
  ~/.zsh/locale

  ~/.zsh/zsh_settings
  ~/.zsh/readline_navigation

  ~/.bash/cli
  ~/.zsh/cli

  ~/.zsh/completion

  ~/.bash/git
  ~/.zsh/git

  ~/.bash/navigation
  ~/.zsh/navigation

  ~/.bash/network
  ~/.zsh/network

  ~/.zsh/prompt

  ~/.bash/ruby
  ~/.zsh/ruby
)

for file in "${sources[@]}"; do
  try-source "$file"
done
unset file

if [[ $OSTYPE == darwin* ]] ; then
  try-source ~/.bash/osx
  try-source ~/.zsh/osx
fi

try-source ~/.localrc
