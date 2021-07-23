MAIN = cv-paolo-brasolin.tex

clean:
	latexmk -c $(MAIN)
	rm -f glyph.log

clobber:
	latexmk -C $(MAIN)
	rm -f glyph.log glyph.mps

build: glyph.mps
	latexmk -pdf $(MAIN)

watch: glyph.mps
	latexmk -pdf -pvc $(MAIN)

glyph.mps:
	mpost --interaction=batchmode glyph.mp
	mv glyph.1 glyph.mps
