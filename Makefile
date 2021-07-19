MAIN = cv-paolo-brasolin.tex

clean:
	latexmk -c $(MAIN)

clobber:
	latexmk -C $(MAIN)

build:
	latexmk -pdf $(MAIN)

watch:
	latexmk -pdf -pvc $(MAIN)
