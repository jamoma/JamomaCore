#give your OS here, WIN32, MAC, or LINUX
OS = MAC

ifeq ($(OS), WIN32)
	GCC = cl.exe /c /EHsc /D__DEBUG__ /D_WIN32 /DTT_PLATFORM_WIN /DTTSTATIC /DWIN_VERSION
else
	GCC = g++ -c -Wall
endif


all: main.obj

main.obj: main.cpp
	$(GCC) main.cpp


clean:
ifeq ($(OS), WIN32) 
	rm -f *~ *.obj
else
	rm -f *~ *.obj
endif