#give your OS here, WIN32, MAC, or LINUX
OS = WIN32

ifeq ($(OS), WIN32)
	GCC = cl.exe /Od /I "../../../../Foundation/library/includes" /I "../../../../DSP/library/includes" /I "../../../library/source" /I "../../../library/DataspaceLib" /I "../../../library/FunctionLib" /I "../../../library/RampLib" /I "../../../library/PeerObject" /I "../../../supports/objectivemax/SDKs/Max5/c74support/max-includes" /I "../../../../../../../DeviceManager/DeviceManager/" /D "TT_PLATFORM_WIN" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "WIN_VERSION" /D "_CRT_SECURE_NO_WARNINGS" /D "_UNICODE" /D "UNICODE" /Gm /EHsc /RTC1 /MDd /Fd"Debug\vc90.pdb" /W3 /nologo /c /ZI /TP /errorReport:prompt
else
	GCC = g++ -c -Wall
endif


all: test

test: main.obj Namespace.obj
	link.exe /out:test.exe /INCREMENTAL /NOLOGO /LIBPATH:"../../../../Foundation/library/Debug" /LIBPATH:"../../../../DSP/library/Debug" /LIBPATH:"../../../library/Debug" /LIBPATH:"../../../../../../../DeviceManager/DeviceManager/Debug" /MANIFEST /MANIFESTFILE:"Debug\TestModular2.exe.intermediate.manifest" /MANIFESTUAC:"level='asInvoker' uiAccess='false'" /DEBUG /PDB:"c:\Users\Laurent Garnier\Travail\Galamus\NodeLib\Jamoma\Modules\Modular\implementations\Example\TestModular2\Debug\TestModular2.pdb" /SUBSYSTEM:CONSOLE /DYNAMICBASE /NXCOMPAT /MACHINE:X86 /ERRORREPORT:PROMPT main.obj Namespace.obj Advapi32.lib User32.lib JamomaFoundation.lib JamomaDSP.lib TTModular.lib DeviceManager.lib
	
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