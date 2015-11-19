#!/usr/bin/env bash

DOTFILES_ROOT=$(pwd)

main () {
  list-dotfiles | while read filename; do
    link-dotfile "$filename"
  done
}

link-dotfile () {
  DOT_FILE="$1"
  MOVE_OLD=0
  PERFORM=1
  FILE_NAME=$(basename "$DOT_FILE")
  TARGET_FILE="$HOME/$FILE_NAME"

  if [ -e "$TARGET_FILE" ]; then
    if [ "$DOT_FILE" -ef "$TARGET_FILE" ]; then
      PERFORM=0
    else
      MOVE_OLD=1
    fi
  fi

  if [ $MOVE_OLD -eq 1 ]; then
    echo "Moving $TARGET_FILE to $TARGET_FILE.old"
    mv "$TARGET_FILE" "$TARGET_FILE.old"
  fi

  if [ $PERFORM -eq 1 ]; then
    echo "Linking $DOT_FILE to $TARGET_FILE"
    ln -s "$DOTFILES_ROOT/$FILE_NAME" "$TARGET_FILE"
  fi
}

list-dotfiles () {
  find . -maxdepth 1 \
    -not -name . \
    -not -name .git \
    -not -name .gitmodules \
    -not -name examples \
    -not -name README.md \
    -not -name bootstrap.sh \
    -not -name resync.sh \
    -not -name install.sh \
    -not -name '*.swp' \
    -not -name '*~' \
    -not -name recover-submodules.sh
}

main "$@"
#list-dotfiles
