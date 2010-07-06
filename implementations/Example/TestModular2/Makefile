#give your OS here, WIN32, MAC, or LINUX
OS = WIN32

ifeq ($(OS), WIN32)
	GCC = cl.exe /Od /I "../../../../Foundation/library/includes" /I "../../../../DSP/library/includes" /I "../../../library/source" /I "../../../library/DataspaceLib" /I "../../../library/FunctionLib" /I "../../../library/RampLib" /I "../../../library/PeerObject" /I "../../../supports/objectivemax/SDKs/Max5/c74support/max-includes" /I "../../../../../../../DeviceManager/DeviceManager/" /D "TT_PLATFORM_WIN" /D "WIN32"  /D "_WINDOWS" /D "WIN_VERSION" /D "_CRT_SECURE_NO_WARNINGS" /Fo"Debug\\" /nologo /W3 /c
#/D "_DEBUG" /errorReport:prompt  /Gm /D "_UNICODE" /D "UNICODE" /RTC1 /EHa /MDd /Fd"Debug\vc90.pdb" /ZI /TP
else
	GCC = g++ -c -Wall
endif


all: test

test: main.obj Namespace.obj
		link.exe /out:test.exe Debug/main.obj Debug/Namespace.obj  /NOLOGO /LIBPATH:"../../../../Foundation/library/Debug" /LIBPATH:"../../../../DSP/library/Debug" /LIBPATH:"../../../library/Debug"  JamomaFoundation.lib JamomaDSP.lib TTModular.lib
#/DEBUG /SUBSYSTEM:CONSOLE /ERRORREPORT:PROMPT /MANIFEST /MANIFESTUAC:"level='asInvoker' uiAccess='false'" /INCREMENTAL /DYNAMICBASE /NXCOMPAT /MACHINE:X86
main.obj: main.cpp
	$(GCC) main.cpp

Namespace.obj: Namespace.cpp Namespace.h 
	$(GCC) Namespace.cpp 
	


clean:
ifeq ($(OS), WIN32) 
	rm -f *~ *.obj test.exe
else
	rm -f *~ *.obj
endif