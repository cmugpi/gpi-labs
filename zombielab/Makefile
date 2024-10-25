.SILENT:
.SUFFIXES:
.PHONY: all clean no-uncommitted-changes
.PRECIOUS: handin.zip

all: handin.zip

clean:
	rm -rf handin.zip

no-uncommitted-changes:
	if git status -unormal --porcelain | grep -q .; then \
		echo "error: there are uncommitted changes."; \
		echo "please commit all of your changes."; \
		echo "try 'git status' for more information."; \
		exit 1; \
	fi

# We have to do this since it's not required for students to create this file, 
# but we do want to update the handin.zip whenever it's changed. Oh well.
stock-up.sh:
	touch stock-up.sh

handin.zip: no-uncommitted-changes avoid-the-dead.sh burn-baby-burn.sh midnight-ambush.sh find-survivors.sh stock-up.sh
	zip -r $@ avoid-the-dead.sh burn-baby-burn.sh midnight-ambush.sh find-survivors.sh stock-up.sh
