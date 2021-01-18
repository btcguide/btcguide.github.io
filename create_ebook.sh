#!/bin/bash

# Verbose printing
set -o xtrace

pandoc --css assets/templates/epub.css --highlight-style zenburn --toc -N --lua-filter _pandoc_filter/image_link.lua --lua-filter _pandoc_filter/add_title.lua -o assets/btcguide.epub index_pandoc.md

# Hackey timer
# https://askubuntu.com/questions/1028924/how-do-i-use-seconds-inside-a-bash-script
hrs=$(( SECONDS/3600 ))
mins=$(( (SECONDS-hrs*3600)/60))
secs=$(( SECONDS-hrs*3600-mins*60 ))
printf 'Time spent: %02d:%02d:%02d\n' $hrs $mins $secs
