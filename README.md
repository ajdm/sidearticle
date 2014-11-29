# sidearticle
## A LaTeX article class file for good use of the margin
Books such as [_Quantum Field Theory for the Gifted Amateur_](https://www.dur.ac.uk/physics/qftgabook/) and [_The Visual Display of Quantitative Information_](http://www.edwardtufte.com/tufte/books_vdqi) use the margin of a book for displaying references, 'footnotes' and ancilliary information without interupting the flow of the main text.
In addition, the use of a wide margin means that the text width is kept nicely short even on large pages such as A4.

``sidearticle.cls`` is a very basic LaTeX document class, built on ``article``, that uses these ideas to produce an appealing-looking article with good use of the margin.
This is acheived mainly through the use of the ``sidenotes`` and ``fontspec`` packages. As such, a modern typesetting engine such as [LuaLaTeX](http://www.luatex.org/) or [XeLaTeX](http://wiki.xelatex.org/doku.php) should be used for building.
By default, the typefaces Minion Pro, DejaVu Sans Mono, Myriad Pro and XITS Math are used.
