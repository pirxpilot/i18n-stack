check: lint

lint:
	./node_modules/.bin/jshint *.js

.PHONY: check lint
