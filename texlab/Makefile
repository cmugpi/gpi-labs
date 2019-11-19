all: $(patsubst %.tex,%.pdf,$(wildcard *.tex))

# Generalized rule: how to build a .pdf from each .tex
%.pdf: %.tex
	pdflatex -interaction nonstopmode $<
handin:
	make written.pdf
	zip handin.zip written.tex written.pdf
	make clean

touch:
	touch *.tex

again: touch all

clean:
	rm -f *.aux *.log *.nav *.out *.snm *.toc *.vrb || true

veryclean: clean
	rm -f written.pdf

.PHONY: all again touch clean veryclean
