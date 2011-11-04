NAME = EffectsLib
CC = g++

#########################################

SRC = EffectsLib.cpp
SRC += sources/TTBalance.cpp
SRC += sources/TTDegrade.cpp
SRC += sources/TTGain.cpp
SRC += sources/TTLimiter.cpp
SRC += sources/TTOverdrive.cpp
SRC += sources/TTPulseSub.cpp
SRC += sources/TTThru.cpp

SRC += tests/TTGain.test.cpp
SRC += tests/TTThru.test.cpp


########################################

INCLUDES = -I.
INCLUDES += -I./includes
INCLUDES += -I../../library/includes
INCLUDES += -I../../../Foundation/library/includes


#########################################

LIB_INCLUDES = -L../../library/build
LIB_INCLUDES += -L../../../Foundation/library/build

LIBS = -lJamomaFoundation
LIBS += -lJamomaDSP


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

