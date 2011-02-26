NAME = DataspaceLib
CC = g++

#########################################

SRC = TTDataspaceLib.cpp
SRC += TTDataspaceUnit.cpp
SRC += TTDataspaceConverter.cpp

SRC += AngleDataspace.cpp
SRC += ColorDataspace.cpp
SRC += DistanceDataspace.cpp
SRC += GainDataspace.cpp
SRC += NoneDataspace.cpp
SRC += PitchDataspace.cpp
SRC += PositionDataspace.cpp
SRC += SpeedDataspace.cpp
SRC += TemperatureDataspace.cpp
SRC += TimeDataspace.cpp


########################################

INCLUDES = -I.
INCLUDES += -I../../library/includes


#########################################

LIB_INCLUDES = -L../../library/build
#LIB_INCLUDES += -L../../../Foundation/library/build

LIBS = -lJamomaFoundation
#LIBS += -lJamomaDSP


#########################################

OPTIMIZATION_FLAGS = -O3
DEFINES = -DTT_PLATFORM_LINUX
OPTIONS = -Wall -Wno-unknown-pragmas -Wno-conversion -shared

CFLAGS = ${OPTIMIZATION_FLAGS} $(OPTIONS) $(DEFINES) $(INCLUDES) -g
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

