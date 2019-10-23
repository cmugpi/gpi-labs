.SILENT:
.SUFFIXES:
.PHONY: all clean
.PRECIOUS: gates-hillman-center handin.zip

all: handin.zip

clean:
	rm -rf handin.zip


gates-hillman-center:
	mkdir $@

handin.zip: avoid-the-dead.sh burn-baby-burn.sh find-survivors.sh midnight-ambush.sh stock-up.sh
	zip -r $@ avoid-the-dead.sh burn-baby-burn.sh find-survivors.sh midnight-ambush.sh stock-up.sh
