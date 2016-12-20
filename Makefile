dissertation:
	$(MAKE) pdf
	$(MAKE) bib
	$(MAKE) pdf
	$(MAKE) pdf


all:
	$(MAKE) figs
	$(MAKE) pdf
	$(MAKE) bib
	$(MAKE) pdf
	$(MAKE) pdf

figs:
	cd diagrams; bash _install.sh;
	#cp img/modified/* img/

pdf:
	pdflatex dissertation

bib:
	bibtex dissertation

.PHONY: clean

clean:
	rm *.aux *.bbl *.blg *.idx *.lof *.log *.lot *.out *.toc
