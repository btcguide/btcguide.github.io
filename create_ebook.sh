#!/bin/bash
pandoc --css templates/epub.css  --highlight-style zenburn --toc -N --lua-filter _pandoc_filter/image_link.lua  --lua-filter _pandoc_filter/add_title.lua  -o assets/btcguide.epub  index.md
