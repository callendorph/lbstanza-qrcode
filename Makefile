# Build Helper

all: build

tests: build build-tests
	./qrcode-tests

build:
	stanza build

build-tests:
	stanza build qrcode-tests

.phony: build build-tests