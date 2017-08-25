.PHONY: all
all:
	@if git diff-index --quiet HEAD --; then \
	mkdir -p gates-hillman-center; \
	zip -r handin gates-hillman-center; \
	else \
	echo "Please make sure to commit your changes before submitting."; \
	fi
