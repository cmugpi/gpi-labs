all: $(patsubst %.tex,%.pdf,$(wildcard *.tex))

# Generalized rule: how to build a .pdf from each .tex
main.pdf: main.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode"  $<
	make clean
handin:
	make main.pdf
	zip handin.zip *.tex assets/* main.pdf
	make clean

touch:
	touch *.tex

again: touch all

clean:
	rm -f *.aux *.log *.nav *.out *.snm *.toc *.vrb *.fls *.fdb_latexmk || true

.PHONY: all again touch clean
