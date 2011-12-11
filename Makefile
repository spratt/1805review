TEX	= pdflatex
TEXOPTS	= -halt-on-error

PROBLEMS = problems.pdf

SOLUTIONS = solutions.pdf

FIGURES	= graph.pdf

all: open_${PROBLEMS} open_${SOLUTIONS}

open_%:	%
	open $< || gnome-open $<

clean:
	rm -f *.log *.aux *.dvi ${PROBLEMS} ${SOLUTIONS}

%.pdf:	%.tex ${FIGURES}
	${TEX} ${TEXOPTS} $<
	${TEX} ${TEXOPTS} $<
