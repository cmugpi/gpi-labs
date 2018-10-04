.SILENT:
.SUFFIXES:
.PHONY: all clean
.PRECIOUS: gates-hillman-center handin.zip

all: handin.zip

clean:
	rm -rf handin.zip


gates-hillman-center:
	mkdir $@

handin.zip: destroy-all-goombas.sh collect-all-coins.sh
	zip -r $@ destroy-all-goombas.sh collect-all-coins.sh
