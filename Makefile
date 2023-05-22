#comp  = pdflatex
comp  = rubber --unsafe -pdf
compa = pdflatex -shell-escape
comp1 = biber

obj1  = apunte_fisica.tex
obj2  = apunte_fisica

apunte_fisica.pdf: ${obj1} 
	${comp} ${obj1}
	${comp1} ${obj2}
	${comp} ${obj1}
	${comp} ${obj1}

apunte_fisica-all.pdf: ${obj1} 
	${compa} ${obj1}
	${comp1} ${obj2}
	${compa} ${obj1}
	${compa} ${obj1}


rm-dvi:
	rm -f *.aux *.out *.bbl *.blg *.log *.toc *.dvi *.xml *.bcf *.fls *.fdb_latexmk *.lof *.gnuploterrors

rm-pdf:
	rm -f ${obj2}.pdf ${obj2}.ps
