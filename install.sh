#!/bin/sh

DOTFILES_ROOT=$(pwd)
ALL_DOTFILES=$DOTFILES_ROOT/*

for DOT_FILE in $ALL_DOTFILES; do
  case $DOT_FILE in
    *install.sh)
      continue ;;
    *)
      MOVE_OLD=0
      PERFORM=1
      FILE_NAME=$(basename $DOT_FILE)
      TARGET_FILE=$HOME/.$FILE_NAME

      if [ -e $TARGET_FILE ]; then
        if [ $DOT_FILE -ef $TARGET_FILE ]; then
          PERFORM=0
        else
          MOVE_OLD=1
        fi
      fi

      if [ 0 -lt $MOVE_OLD ]; then
        echo Moving $TARGET_FILE to $TARGET_FILE.old
        mv $TARGET_FILE $TARGET_FILE.old
      fi

      [ 0 -lt $PERFORM ] && ln -s $DOT_FILE $TARGET_FILE
  esac
done

