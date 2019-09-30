VERSION= master/resume.tex
SRC= ./src/$(VERSION)

OUT= ./resume/

.phony: clean

all: $(SRC)
	pdflatex -output-directory $(OUT) $(SRC)

open: $(OUT)resume.pdf
	xpdf $(OUT)resume.pdf

clean:
	rm $(OUT)*.*
