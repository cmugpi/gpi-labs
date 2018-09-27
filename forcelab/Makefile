.SILENT:
.SUFFIXES:
.PHONY: all clean
.PRECIOUS: gates-hillman-center handin.zip

all: handin.zip

clean:
	rm -rf handin.zip


gates-hillman-center:
	mkdir $@

handin.zip: message.sh reorganize.sh flight-prep.sh battle.sh
	zip -r $@ message.sh reorganize.sh flight-prep.sh battle.sh
