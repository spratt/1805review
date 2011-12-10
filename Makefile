TEX	= pdflatex
TEXOPTS	= -halt-on-error

PDF	= review.pdf

PARTS	=

FIGURES	=

open:	${PDF}
	open $< || gnome-open $<

clean:
	rm -f *.log *.aux *.dvi ${FILES}

${PDF}:	${subst pdf,tex,${PDF}} ${PARTS} ${FIGURES}
	${TEX} ${TEXOPTS} $<
	${TEX} ${TEXOPTS} $<