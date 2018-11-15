.SILENT:
.SUFFIXES:
.PHONY: all clean
.PRECIOUS: gates-hillman-center handin.zip

all: handin.zip

clean:
	rm -rf handin.zip


gates-hillman-center:
	mkdir $@

handin.zip: copy-castle beat-the-tides
	zip -r $@ copy-castle beat-the-tides
