#!/bin/sh

# xargs basename | xargs -I J cp -a "$HOME/J" .
find . -maxdepth 1 -not -name '.' -not -name 'examples' -not -name README.md -not -name bootstrap.sh -not -name resync.sh
