###################################################################################################
#give OS in argument : WIN32, MAC, or LINUX

ifeq ($(OS), WIN32)
	GCC = cl.exe /c /EHsc /D__DEBUG__ /D_WIN32 /DTT_PLATFORM_WIN /DTTSTATIC /DWIN_VERSION
else
	GCC = g++ -c -Wall
endif

#
###################################################################################################

FOUNDATION_PATH = ../../../../Foundation/library
DSP_PATH = ../../../../DSP/library
MODULAR_PATH = ../../../library
MAX_PATH = ../../../supports/objectivemax/SDKs/Max5/c74support/max-includes


#give CONFIG in argument : Debug or Release
install: main.obj
	link.exe /out:$(CONFIG)/TestModular.exe /nodefaultlib:LIBCMT main.obj $(FOUNDATION_PATH)/$(CONFIG)/JamomaFoundation.lib $(DSP_PATH)/$(CONFIG)/JamomaDSP.lib $(MODULAR_PATH)/$(CONFIG)/TTModular.lib $(MAX_PATH)/maxcrt.lib Shell32.lib Advapi32.lib User32.lib
	
main.obj: main.cpp
	$(GCC) main.cpp /I $(FOUNDATION_PATH)/includes /I $(DSP_PATH)/includes /I $(MODULAR_PATH)/source /I $(MODULAR_PATH)/PeerObject /I $(MODULAR_PATH)/DataspaceLib /I $(MODULAR_PATH)/RampLib /I $(MODULAR_PATH)/FunctionLib /I $(MAX_PATH)  


clean:
ifeq ($(OS), WIN32) 
	rm -f *~ *.obj
else
	rm -f *~ *.obj
endif

WIN32;
_DEBUG;
_WINDOWS;
_USRDLL;
TTBLUE_EXPORTS;
TTMODULAR_EXPORTS;
TT_PLATFORM_WIN;
WIN_VERSION;
_DLL_JAMOMA_EXPORT;
_CRT_SECURE_NO_WARNINGS;
_CRT_NOFORCE_MANIFEST;
_STL_NOFORCE_MANIFEST