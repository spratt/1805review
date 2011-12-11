TEX	= pdflatex
TEXOPTS	= -halt-on-error

PDF	= review.pdf

PARTS	= 

FIGURES	= graph.pdf

open:	${PDF}
	open $< || gnome-open $<

clean:
	rm -f *.log *.aux *.dvi ${PDF}

${PDF}:	${subst pdf,tex,${PDF}} ${PARTS} ${FIGURES}
	${TEX} ${TEXOPTS} $<
	${TEX} ${TEXOPTS} $<
