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

remove-trailing-whitespace:
	sed -i -e 's/ *$$//' find-replace.txt; \
	sed -i -e 's/ *$$//' fix-typos.txt; \
	sed -i -e 's/ *$$//' hedwig.txt; \
	sed -i -e 's/ *$$//' hogwarts.txt; \
	sed -i -e 's/ *$$//' scots-edition.txt; \
	sed -i -e 's/ *$$//' editor.txt; \
	if git status -unormal --porcelain | grep -q .; then \
		echo "WARNING: We found trailing whitespace in your submission."; \
		echo "We removed it automatically, since it does not play well with"; \
		echo "the autograder"; \
		git add -A; \
		git commit -m "Remove trailing whitespace"; \
	fi;

handin.zip: no-uncomitted-changes remove-trailing-whitespace find-replace.txt fix-typos.txt hedwig.txt hogwarts.txt scots-edition.txt editor.txt
	zip -r $@ find-replace.txt fix-typos.txt hedwig.txt hogwarts.txt scots-edition.txt editor.txt
