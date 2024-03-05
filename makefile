
all: windows linux

windows: bin/datcom.exe

linux: bin/datcom

bin/datcom:
	gfortran  -std=legacy src/datcom.f -o bin/datcom

bin/datcom.exe:
	x86_64-w64-mingw32-gfortran-win32 -std=legacy -static src/datcom.f -o bin/datcom.exe
