all: resume.pdf

resume.pdf: resume.tex
	pdflatex resume.tex
	pdflatex resume.tex  # Run twice for proper formatting

clean:
	rm -f *.aux *.log *.out *.toc *.lof *.lot

view: resume.pdf
	open resume.pdf  