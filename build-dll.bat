SET PATH=%PATH%;e:\mingw64\mingw64\bin
SET SRC=./src/Wrapper.c ./QR-Code-generator/c/qrcodegen.c
SET CFLAGS=-IQR-Code-generator/c
gcc --version
gcc -v %SRC% %CFLAGS% -o QRCode.dll -shared -fPIC