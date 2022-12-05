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
  val qr = encode-text(encoder, "http://lbstanza.org")
  println("%~" % [qr])

```

Note that I haven't been able to photograph the console output with my iphone and get the link yet. This library also contains a tool for generating a PNG image of the QR Code using
[lbstanza-cairo](https://github.com/callendorph/lbstanza-cairo).

![QRCode](/imgs/lbstanza.png?raw=true)


## Build

```
$> git submodule update --init
$> sudo apt install build-essentials libcairo2-dev
$> make
```

Cairo is needed to generate the PNG image of the QR code.

## Run Tests

```
$> stanza build qrcode-tests
$> make tests
stanza build
stanza build qrcode-tests
./qrcode-tests
[Test 1] gen-text-qrcode


        X X X X X X X   X X X       X X X X X X X
        X           X     X   X     X           X
        X   X X X   X     X X       X   X X X   X
        X   X X X   X     X X X X   X   X X X   X
        X   X X X   X   X X     X   X   X X X   X
        X           X   X X X       X           X
        X X X X X X X   X   X   X   X X X X X X X
                          X X
          X X X X X X X         X     X X       X
        X   X X   X   X X X X     X   X X X X X X
          X X   X X X   X   X   X X X       X X
          X X X X       X X X X X       X X X
        X X     X   X   X   X   X   X   X X     X
                        X X X X   X X X X X X   X
        X X X X X X X   X X   X     X X     X X
        X           X   X X X     X     X X X X X
        X   X X X   X   X X X X X   X   X X     X
        X   X X X   X   X X X   X     X X   X
        X   X X X   X   X       X X X X     X
        X           X   X X   X   X   X X   X
        X X X X X X X     X X X     X X X X   X



[PASS]

Tests Finished: 1/1 tests passed. 0 tests skipped. 0 tests failed.

Longest Running Tests:
[PASS] gen-text-qrcode (22 ms)
```

This will also create a `test-qr.png` image in the local directory.