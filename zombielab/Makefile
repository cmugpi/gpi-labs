.SILENT:
.SUFFIXES:
.PHONY: all clean
.PRECIOUS: gates-hillman-center handin.zip

all: handin.zip

clean:
	rm -rf handin.zip


gates-hillman-center:
	mkdir $@

handin.zip: no-uncomitted-changes avoid-the-dead.sh burn-baby-burn.sh find-survivors.sh midnight-ambush.sh
	zip -r $@ avoid-the-dead.sh burn-baby-burn.sh find-survivors.sh midnight-ambush.sh
