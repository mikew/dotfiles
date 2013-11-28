#!/bin/sh

DOTFILES_ROOT=$(pwd)
#ALL_DOTFILES=$DOTFILES_ROOT/*.*
ALL_DOTFILES=$(find . -maxdepth 1   \
  -not -name '.'                    \
  -not -name 'examples'             \
  -not -name README.md              \
  -not -name bootstrap.sh           \
  -not -name resync.sh              \
  -not -name bootstrap.sh~          \
  -not -name install.sh             \
  -not -name recover-submodules.sh)

for DOT_FILE in $ALL_DOTFILES; do
  case $DOT_FILE in
    *install.sh|*examples|*resync.sh|*bootstrap.sh~|*recover-submodules.sh)
      continue ;;
    *)
      MOVE_OLD=0
      PERFORM=1
      FILE_NAME=$(basename "$DOT_FILE")
      TARGET_FILE="$HOME/$FILE_NAME"

      if [ -e $TARGET_FILE ]; then
        if [ $DOT_FILE -ef $TARGET_FILE ]; then
          PERFORM=0
        else
          MOVE_OLD=1
        fi
      fi

      if [ 0 -lt $MOVE_OLD ]; then
        echo Moving $TARGET_FILE to $TARGET_FILE.old
        mv "$TARGET_FILE" "$TARGET_FILE.old"
      fi

      [ 0 -lt $PERFORM ] && ln -s "$DOTFILES_ROOT/$FILE_NAME" "$TARGET_FILE"
  esac
done
