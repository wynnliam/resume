VERSION= master/resume.tex
SRC= ./src/$(VERSION)

OUT= ./resume/

.phony: clean

all: $(SRC)
	pdflatex -output-directory $(OUT) $(SRC)

clean:
	rm $(OUT)*.*
