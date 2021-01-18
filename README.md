# btcguide.github.io

For regular users, just visit <https://btcguide.github.io/> to see GitHub Pages render this content as a static website.

---

For advanced users, you can host this locally with [jekyll](https://jekyllrb.com/) (setup instructions: [Ubuntu](https://jekyllrb.com/docs/installation/ubuntu/); [macOS](https://jekyllrb.com/docs/installation/macos/)):
```bash
$ bundle exec jekyll serve
```

Then visit: <http://127.0.0.1:4000>

## Spellcheck

To spell check (takes ~3s):
```bash
$ pyspelling -c .spellcheck.yml 
Spelling check passed :)
```

Notes:
* See `.wordlist.txt` for all the exception words.
* `$ brew install aspell && pip install pyspelling` (macOS) are needed.


## Create pdf/epub/mobi

#### Install Dependencies

We'll be using [latex](https://www.latex-project.org/get/) and [pandoc](https://pandoc.org/installing.html)
macOS:
```bash
$ brew install pandoc
$ brew cask install mactex
```
TODO: add windows & linux instructions

#### Build the Docs
macOS (shoudl work on linux, too):
```bash
$ create_pdf.sh
$ create_ebook.sh
```

Windows:
```bash
create_pdf.bat
create_ebook.bat
```

(the mobi file can be created from the epub file using [kindle previewer](https://www.amazon.com/gp/feature.html?ie=UTF8&docId=1003018611))
