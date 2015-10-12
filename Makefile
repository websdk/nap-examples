PATH  := node_modules/.bin:$(PATH)
SHELL := /bin/bash

NPM = @npm install --local > /dev/null && touch node_modules

examples: node_modules
	@open $(wildcard basic/*.html)

node_modules: package.json
	$(NPM)
node_modules/%:
	$(NPM)

clean:
	@rm -rf $$(cat .gitignore)

.PHONY: examples clean