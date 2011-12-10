TEX	= pdflatex
TEXOPTS	= -halt-on-error

PDF	= review.pdf

PARTS	=

FIGURES	=

${PDF}:	${subst pdf,tex,${PDF}} ${PARTS} ${FIGURES}
	${TEX} ${TEXOPTS} $<
	${TEX} ${TEXOPTS} $<

open:	${PDF}
	open $< || gnome-open $<

all:	${PDF}

clean:
	rm -f *.log *.aux *.dvi ${FILES}