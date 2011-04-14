NAME = PluginLib
CC = g++

#########################################

SRC = TTPluginLib.cpp

SRC += OscPlugin.cpp
SRC += MinuitPlugin.cpp
SRC += CopperlanPlugin.cpp


########################################

INCLUDES = -I.
INCLUDES += -I../../library/includes


#########################################

LIB_INCLUDES = -L../../library/build

LIBS = -lJamomaModular


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

