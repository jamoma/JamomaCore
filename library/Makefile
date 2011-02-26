NAME = JamomaDSP
CC = g++

#########################################

SRC = source/TTAudioEngine.cpp
SRC += source/TTAudioObject.cpp
SRC += source/TTAudioObjectArray.cpp
SRC += source/TTAudioSignal.cpp
SRC += source/TTAudioSignalArray.cpp
SRC += source/TTBuffer.cpp
SRC += source/TTDelay.cpp
SRC += source/TTDSP.cpp


########################################

INCLUDES = -I./includes
INCLUDES += -I../../Foundation/library/includes
INCLUDES += -I./portaudio/include


#########################################

LIB_INCLUDES = -L../../Foundation/library/build
LIB_INCLUDES += -L/usr/lib     # <-- for libportaudio

LIBS = -lJamomaFoundation
LIBS += -lportaudio


#########################################

OPTIMIZATION_FLAGS = -O3
DEFINES = -DTT_PLATFORM_LINUX
OPTIONS = -Wall -Wno-unknown-pragmas -Wno-conversion -shared

CFLAGS = ${OPTIMIZATION_FLAGS} $(OPTIONS) $(DEFINES) $(INCLUDES)
LDFLAGS = $(INCLUDES) $(LIB_INCLUDES) $(LIBS)


#########################################

Debug:
	#mkdir build
	$(CC) $(CFLAGS) $(DEFINES) $(SRC) -o build/lib$(NAME).so $(LDFLAGS) 

Release:
	#mkdir build
	$(CC) $(CFLAGS) $(DEFINES) $(SRC) -o build/lib$(NAME).so $(LDFLAGS) $(OPTIMIZATION_FLAGS)

all:
	#mkdir build
	$(CC) $(CFLAGS) $(DEFINES) $(SRC) -o build/lib$(NAME).so $(LDFLAGS) 

clean:
	rm -f *.o
