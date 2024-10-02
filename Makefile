all: main.tex buildFolder
	-pdflatex -output-directory=build -interaction=batchmode main.tex
	cp build/main.pdf manual.pdf

buildFolder:
	mkdir -p build

clean:
	rm -rf build

install:
	./install.sh
