ML_CV=resumeml
SOFTWARE_CV=resumesoftware

all: ${ML_CV}.pdf ${SOFTWARE_CV}.pdf

${ML_CV}.pdf:
	latexmk -pdf ${ML_CV}.tex

${SOFTWARE_CV}.pdf:
	latexmk -pdf ${SOFTWARE_CV}.tex

clean:
	rm -f *.aux *.bbl *.bcf *.fdb_latexmk *.fls *.log *.out *.run.xml *.blg *.toc *\~

distclean: clean
	rm -f *.pdf