#!/bin/bash

DIRECTORY=$(pwd)
cd "$1"
find -type f -exec python ~/Desktop/Tutoriales/Tutorial\ python/lowercase.py -in {} \; > "$DIRECTORY/plswork.txt"
