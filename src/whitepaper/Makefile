PDFLATEX ?= pdflatex -halt-on-error -file-line-error -shell-escape
BIBTEX ?= biber 

all: whitepaper_en.pdf

.PHONY: clean

clean:
	rm -rf *.blg 
	rm -rf *.out 
	rm -rf *.bbl 
	rm -rf *.log
	rm -rf *.ind
	rm -rf *.ilg
	rm -rf *.lot
	rm -rf *.lof
	rm -rf *.ind
	rm -rf *.idx
	rm -rf *.aux
	rm -rf *.toc

whitepaper_ru: whitepaper_ru.tex

whitepaper_ru.pdf: whitepaper_ru
	$(PDFLATEX) $^.tex
	$(BIBTEX) $^
	$(PDFLATEX) $^.tex

whitepaper_en: whitepaper_en.tex

whitepaper_en.pdf: whitepaper_en
	$(PDFLATEX) $^.tex 
	$(BIBTEX) $^
	$(PDFLATEX) $^.tex
