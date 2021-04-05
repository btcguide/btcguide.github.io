# btcguide.github.io

For regular users, just visit <https://btcguide.github.io/> to see GitHub Pages render this content as a static website.

---

For advanced users, you can host this locally with [jekyll](https://jekyllrb.com/) (setup instructions: [Ubuntu](https://jekyllrb.com/docs/installation/ubuntu/); [macOS](https://jekyllrb.com/docs/installation/macos/)):
```bash
$ bundle exec jekyll serve
```

Then visit: <http://127.0.0.1:4000>

To spell check (takes ~3s):
```bash
$ pyspelling -c .spellcheck.yml 
Spelling check passed :)
```

Notes:
* See `.wordlist.txt` for all the exception words.
* `$ brew install aspell && pip install pyspelling` are needed.


## Create pdf/epub/mobi
1. Install [latex](https://www.latex-project.org/get/)
1. Install [pandoc](https://pandoc.org/installing.html)


1. Build the documents with

```
create_pdf.bat
create_ebook.bat
```
or
```
create_pdf.sh
create_ebook.sh
```
1. The mobi file can be created from the epub file using [kindle previewer](https://www.amazon.com/gp/feature.html?ie=UTF8&docId=1003018611)

