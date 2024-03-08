latex=pdflatex
latex_args=-synctex=1 -interaction=nonstopmode -quiet
latex_garbage=pdfa.xmpi thesis.log thesis.out thesis.aux thesis.toc thesis.synctex.gz chapters\\*.aux bibliography\\*.aux
cln=del $(latex_garbage)

build:
	$(latex) $(latex_args) thesis
	$(latex) $(latex_args) thesis
	$(cln)

clean:
	$(cln)
