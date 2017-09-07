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
	sed -i '' -e 's/ *$$//' big-league.txt; \
	sed -i '' -e 's/ *$$//' clean-up.txt; \
	sed -i '' -e 's/ *$$//' fire-him.txt; \
	sed -i '' -e 's/ *$$//' kill-bugs.txt; \
	sed -i '' -e 's/ *$$//' up-down-all-around.txt; \
	sed -i '' -e 's/ *$$//' sliding.txt; \
	if git status -unormal --porcelain | grep -q .; then \
		echo "WARNING: We found trailing whitespace in your submission."; \
		echo "We removed it automatically, since it does not play well with"; \
		echo "the autograder"; \
		git add -A; \
		git commit -m "Remove trailing whitespace"; \
	fi;

gates-hillman-center:
	mkdir $@

handin.zip: no-uncomitted-changes remove-trailing-whitespace big-league.txt clean-up.txt fire-him.txt kill-bugs.txt up-down-all-around.txt sliding.txt
	zip -r $@ big-league.txt clean-up.txt fire-him.txt kill-bugs.txt up-down-all-around.txt sliding.txt 
