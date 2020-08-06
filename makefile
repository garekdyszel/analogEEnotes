
COVER=cover_page
MASTER=master

all: # build the cover and the master file
# cover
	mkdir -p build
	pdflatex -output-directory=build $(COVER).tex
	mv build/$(COVER).pdf ./
# master file
	mkdir -p build
	pdflatex -output-directory=build $(MASTER).tex
	mv build/$(MASTER).pdf ./
