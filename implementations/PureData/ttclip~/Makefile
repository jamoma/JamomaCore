NAME = ttclip~
CC = g++

#########################################

SRC = ttclip~.cpp
#SRC += source/TTClass.cpp


########################################

INCLUDES = -I../../../library/includes
INCLUDES += -I../../../../Foundation/library/includes
INCLUDES += -I../


#########################################

LIB_INCLUDES = -L../../../library/build
LIB_INCLUDES += -L../../../../Foundation/library/build

LIBS = -lJamomaFoundation
LIBS += -lJamomaDSP

#LIB_INCLUDES = 
#LIBS = "/Library/Application Support/Jamoma/Libraries/JamomaFoundation.dylib"
#LIBS += "/Library/Application Support/Jamoma/Libraries/JamomaDSP.dylib"

#########################################

OPTIMIZATION_FLAGS = -O2
DEFINES = -DTT_PLATFORM_LINUX
OPTIONS = -Wall -Wno-unknown-pragmas -Wno-conversion -shared

CFLAGS = ${OPTIMIZATION_FLAGS} $(OPTIONS) $(DEFINES) $(INCLUDES)
LDFLAGS = $(INCLUDES) $(LIB_INCLUDES) $(LIBS)


#########################################

all:
	# TODO: on Linux we can't do a mkdir if the dir already exists, so we need to check for it
	#mkdir build
	$(CC) $(CFLAGS) $(DEFINES) $(SRC) -o build/$(NAME).pd_linux $(LDFLAGS) 

clean:
	rm -f *.o
