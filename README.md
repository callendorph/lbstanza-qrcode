# QR Code Generator for lbstanza

This repository contains a stanza wrapper around the [nayuki/QR-Code-generator](https://github.com/nayuki/QR-Code-generator) project. This allows for a user to create a QR code representation of any passed string.

## Example:

```
defpackage SomeTest :
  import core
  import QRCode/QRCode
  import QRCode/Encoder


def main () :
  val encoder = QRCodeEncoder(ECC_LOW, MASK_AUTO)
  val qr = encode-text(encoder, "http://g.co")
  println("%~" % [qr])

```

Note that I haven't been able to photograph the console output with my iphone and get the link yet. I'm going to work on a image generator next.

## Build

```
$> git submodule update --init
$> stanza build
```

## Run Tests

```
$> stanza build qrcode-tests
$> ./qrcode-tests
[Test 1] gen-text-qrcode
[PASS]

Tests Finished: 1/1 tests passed. 0 tests skipped. 0 tests failed.

Longest Running Tests:
[PASS] gen-text-qrcode (2355 us)
```
