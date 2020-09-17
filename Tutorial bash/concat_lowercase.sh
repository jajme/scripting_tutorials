#!/bin/bash

cd "$1"
LOWER_TEXT=$(find -type f -exec python ~/Desktop/Tutoriales/Tutorial\ python/lowercase.py -in {} \;)
LOWER_TEXT="$LOWER_TEXT \n lowercased"
echo "$LOWER_TEXT">"lower_txt.txt"
