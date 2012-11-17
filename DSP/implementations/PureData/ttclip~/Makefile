NAME = ttclip~
CC = g++

#########################################

SRC = ttclip~.cpp


########################################

INCLUDES = -I../../../library/includes
INCLUDES += -I../../../../Foundation/library/includes
INCLUDES += -I../


#########################################

LIBS = -lJamomaFoundation
LIBS += -lJamomaDSP

LIB_INCLUDES = -L/usr/lib
#/usr/local/lib is not present in the LD path by default on Ubuntu 10


#########################################

OPTIMIZATION_FLAGS = -O2
DEFINES = -DTT_PLATFORM_LINUX
OPTIONS = -Wall -Wno-unknown-pragmas -Wno-conversion -shared -g -std=c++0x
OPTIONS += -msse3 -mfpmath=sse

CFLAGS = ${OPTIMIZATION_FLAGS} $(OPTIONS) $(DEFINES) $(INCLUDES)
LDFLAGS = $(INCLUDES) $(LIB_INCLUDES) $(LIBS) -g


#########################################

all:
	$(CC) $(CFLAGS) $(DEFINES) $(SRC) -o build/$(NAME).pd_linux $(LDFLAGS) 
	cp build/*.pd_linux ../../../../../Builds/PureData

clean:
	rm -f *.o

