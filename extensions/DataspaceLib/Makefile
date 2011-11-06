NAME = DataspaceLib
CC = g++

#########################################

SRC = TTDataspaceLib.cpp
SRC += source/TTDataspaceUnit.cpp
SRC += source/TTDataspaceConverter.cpp

SRC += source/AngleDataspace.cpp
SRC += source/ColorDataspace.cpp
SRC += source/DistanceDataspace.cpp
SRC += source/GainDataspace.cpp
SRC += source/NoneDataspace.cpp
SRC += source/PitchDataspace.cpp
SRC += source/PositionDataspace.cpp
SRC += source/SpeedDataspace.cpp
SRC += source/TemperatureDataspace.cpp
SRC += source/TimeDataspace.cpp


########################################

INCLUDES = -I.
INCLUDES += -I./includes
INCLUDES += -I../../library/includes


#########################################

LIB_INCLUDES = -L../../library/build

LIBS = -lJamomaFoundation


#########################################

OPTIMIZATION_FLAGS = -O3
DEFINES = -DTT_PLATFORM_LINUX
OPTIONS = -Wall -Wno-unknown-pragmas -Wno-conversion -shared -g -std=c++0x
OPTIONS += -msse3 -mfpmath=sse

CFLAGS = ${OPTIMIZATION_FLAGS} $(OPTIONS) $(DEFINES) $(INCLUDES)
LDFLAGS = $(INCLUDES) $(LIB_INCLUDES) $(LIBS) -g


#########################################

Debug:
	$(CC) $(CFLAGS) $(DEFINES) $(SRC) -o build/$(NAME).ttso $(LDFLAGS)

Release:
	$(CC) $(CFLAGS) $(DEFINES) $(SRC) -o build/$(NAME).ttso $(LDFLAGS) $(OPTIMIZATION_FLAGS)

all:
	$(CC) $(CFLAGS) $(DEFINES) $(SRC) -o build/$(NAME).ttso $(LDFLAGS)

clean:
	rm -f *.o

