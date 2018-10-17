PDFLATEX ?= pdflatex -halt-on-error -file-line-error -shell-escape
XELATEX ?= xelatex
BIBTEX ?= biber 

all: whitepaper_ch.pdf

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

whitepaper_ch: whitepaper_ch.tex

whitepaper_ch.pdf: whitepaper_ch
	$(XELATEX) $^.tex 
	$(BIBTEX) $^
	$(XELATEX) $^.tex

