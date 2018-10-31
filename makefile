comp.dvi:
	platex --kanji=utf8 tex/comp.tex

comp.pdf: comp.dvi
	dvipdfmx comp.dvi

run: comp.pdf
	evince comp.pdf

clean:
	rm -f *.log
	rm -f *.pdf
	rm -f *.dvi
	rm -f *.aux
