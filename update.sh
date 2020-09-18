#!/bin/bash

# for all the files
FILES=$( ls -a files )
for f in $FILES
do
  # move the file from ~/ into files to replace it
  if [[ "$f" != "." && "$f" != ".." ]]; then
    cp ~/"$f" files/
  fi
done
