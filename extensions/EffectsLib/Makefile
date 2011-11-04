NAME = EffectsLib
CC = g++

#########################################

SRC = EffectsLib.cpp
SRC += TTBalance.cpp
SRC += TTDegrade.cpp
SRC += TTGain.cpp
SRC += TTLimiter.cpp
SRC += TTOverdrive.cpp
SRC += TTPulseSub.cpp

SRC += TTGainTest.cpp


########################################

INCLUDES = -I.
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

