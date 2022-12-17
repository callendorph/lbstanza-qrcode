all: QRCode.so build

tests: build build-tests
	QRCODE_SHARED_LIB="./QRCode.so" ./qrcode-tests

build:
	stanza build

build-tests:
	stanza build qrcode-tests

.phony: build build-tests

CC=gcc
SRC=src/Wrapper.c QR-Code-generator/c/qrcodegen.c
CFLAGS=-IQR-Code-generator/c
QRCode.so: $(SRC)
	$(CC) --version
	$(CC) -v $(SRC) $(CFLAGS) -o $@ -shared -fPIC

