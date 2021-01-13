# btcguide.github.io

For regular users, just visit <https://btcguide.github.io/> to see GitHub Pages render this content as a static website.

---

For advanced users, you can host this locally with [jekyll](https://jekyllrb.com/) (setup instructions [here](https://jekyllrb.com/docs/installation/ubuntu/)):
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


## Create pdf/epub/mobi on windows
1. Install miktex portable: https://miktex.org/howto/portable-edition
1. Install pandoc:

```
	choco install pandoc
```

1. Open the miktex terminal and go into the base directory. The pdf/epub documents can be build with

```
create_pdf.bat
create_ebook.bat
```
1. The mobi file can be created from the epub file using kindle previewer: https://www.amazon.com/gp/feature.html?ie=UTF8&docId=1003018611

