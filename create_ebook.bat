pandoc  --css .\templates\epub.css  --toc -N  --lua-filter _pandoc_filter\image_link.lua  --lua-filter _pandoc_filter\add_title.lua  --filter pandoc-crossref -o assets\btcguide.epub  index.md
