dissertation:
	pdflatex dissertation
	bibtex dissertation
	pdflatex dissertation
	pdflatex dissertation

pdf:
	pdflatex dissertation

bib:
	bibtex dissertation

.PHONY: clean

clean:
	rm *.aux *.bbl *.blg *.idx *.lof *.log *.lot *.out *.toc
