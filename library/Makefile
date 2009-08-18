NAME = JamomaFoundation
CC = g++

########################################

INCLUDES = -I./includes
#INCLUDES += -I./DataspaceLib
#INCLUDES += -I./FunctionLib


#########################################

#LIB_INCLUDES = -L../ThirdParty/TTBlue/library/build
#LIB_INCLUDES += -L/maxmspsdk/c74support/max-includes
#LIB_INCLUDES += -L/maxmspsdk/c74support/msp-includes

#LIBS = -lTTBlue
#LIBS += -lMaxAPI
#LIBS += -lMaxAudio


#########################################

OPTIMIZATION_FLAGS = -O3
DEFINES = -DTT_PLATFORM_LINUX
OPTIONS = -Wall -Wno-unknown-pragmas -Wno-conversion -shared

CFLAGS = ${OPTIMIZATION_FLAGS} $(OPTIONS) $(DEFINES) $(INCLUDES)
LDFLAGS = $(INCLUDES) $(LIB_INCLUDES) $(LIBS)


#########################################

SRC = source/TTAttribute.cpp
SRC += source/TTClass.cpp
SRC += source/TTDataObject.cpp
SRC += source/TTElement.cpp
SRC += source/TTEnvironment.cpp
SRC += source/TTFoundation.cpp
SRC += source/TTHash.cpp
SRC += source/TTList.cpp
SRC += source/TTMessage.cpp
SRC += source/TTMutex.cpp
SRC += source/TTObject.cpp
SRC += source/TTQueue.cpp
SRC += source/TTSymbol.cpp
SRC += source/TTSymbolCache.cpp
SRC += source/TTSymbolTable.cpp
SRC += source/TTThread.cpp
SRC += source/TTValue.cpp
SRC += source/TTValueCache.cpp


#########################################

Debug:
	#mkdir build
	$(CC) $(CFLAGS) $(DEFINES) $(SRC) -o build/lib$(NAME).so $(LDFLAGS) 


Release:
	#mkdir build
	$(CC) $(CFLAGS) $(DEFINES) $(SRC) -o build/lib$(NAME).so $(LDFLAGS) $(OPTIMIZATION_FLAGS)

all:
	mkdir build
	$(CC) $(CFLAGS) $(DEFINES) $(SRC) -o build/lib$(NAME).so $(LDFLAGS) 

clean:
	rm -f *.o
