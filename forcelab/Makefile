.SILENT:
.SUFFIXES:
.PHONY: all clean no-uncomitted-changes
.PRECIOUS: handin.zip

all: handin.zip

clean:
	rm -rf handin.zip

no-uncomitted-changes:
	if git status -unormal --porcelain | grep -q .; then \
		echo "error: there are uncommited changes."; \
		echo "please commit all of your changes."; \
		echo "try 'git status' for more information."; \
		exit 1; \
	fi

# We have to do this since it's not required for students to create this file, 
# but we do want to update the handin.zip whenever it's changed. Oh well.
prequel-memes.sh:
	touch prequel-memes.sh

handin.zip: no-uncomitted-changes battle.sh flight-prep.sh message.sh prequel-memes.sh reorganize.sh
	zip -r $@ battle.sh flight-prep.sh message.sh prequel-memes.sh reorganize.sh
