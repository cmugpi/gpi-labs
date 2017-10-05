.SILENT:
.SUFFIXES:
.PHONY: all clean no-uncomitted-changes
.PRECIOUS: gates-hillman-center handin.zip

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

gates-hillman-center:
	mkdir $@

handin.zip: no-uncomitted-changes flashlight.sh ghost-catcher-3000.sh ghost-catcher-3000.sh find-the-hidden.sh
	zip -r $@ flashlight.sh ghost-catcher-3000.sh ghost-catcher-3001.sh find-the-hidden.sh
