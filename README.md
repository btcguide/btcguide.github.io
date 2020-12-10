# btcguide.github.io

For regular users, just visit <https://btcguide.github.io/> to see GitHub Pages render this content as a static website.

---

This branch is used to crate a pdf and epub file from the markdown sources.

## Create pdf on windows
* Install miktex portable: https://miktex.org/howto/portable-edition
* Install pandoc and pandoc-crossref:

```
	choco install pandoc
	choco install pandoc-crossref
```
* Open the miktex terminal and go into the base directory. The documents can be build with

```
create_pdf.bat
craete_ebook.bat
```
* The mobi file can be created from the epub file using kindle previewer: https://www.amazon.com/gp/feature.html?ie=UTF8&docId=1003018611