#!/bin/bash

DIRECTORY=$(pwd)
cd "$1"
LOWER_TEXT=$(find -type f -exec python ~/Desktop/Tutoriales/Tutorial\ python/lowercase.py -in {} \;)
LOWER_TEXT="$LOWER_TEXT \n lowercased"
echo "$LOWER_TEXT">"$DIRECTORY/lower_txt.txt"
