NAME = JamomaFoundation
CC = g++

########################################

INCLUDES = -I./includes
INCLUDES += -I./boost
INCLUDES += -I./tests


#########################################

LIB_INCLUDES = -L./boost/lib-linux-i386

LIBS = -lboost_filesystem
LIBS += -lboost_system


#########################################

OPTIMIZATION_FLAGS = -O3
DEFINES = -DTT_PLATFORM_LINUX
OPTIONS = -Wall -Wno-unknown-pragmas -Wno-conversion -shared -g

CFLAGS = ${OPTIMIZATION_FLAGS} $(OPTIONS) $(DEFINES) $(INCLUDES)
LDFLAGS = $(INCLUDES) $(LIB_INCLUDES) $(LIBS) -g


#########################################

SRC = source/TTAttribute.cpp
SRC += source/TTBase.cpp
SRC += source/TTCallback.cpp
SRC += source/TTClass.cpp
SRC += source/TTDataObject.cpp
SRC += source/TTDictionary.cpp
SRC += source/TTEnvironment.cpp
SRC += source/TTFoundation.cpp
SRC += source/TTHash.cpp
SRC += source/TTList.cpp
SRC += source/TTMatrix.cpp
SRC += source/TTMessage.cpp
SRC += source/TTMutex.cpp
SRC += source/TTNode.cpp
SRC += source/TTNodeDirectory.cpp
SRC += source/TTObject.cpp
SRC += source/TTPath.cpp
SRC += source/TTQueue.cpp
SRC += source/TTSymbol.cpp
SRC += source/TTSymbolCache.cpp
SRC += source/TTSymbolTable.cpp
SRC += source/TTThread.cpp
SRC += source/TTUnitTest.cpp
SRC += source/TTValue.cpp
SRC += source/TTValueCache.cpp

SRC += tests/TTMatrixTest.cpp
SRC += tests/TTValueTest.cpp


#########################################

Debug:
	$(CC) $(CFLAGS) $(DEFINES) $(SRC) -o build/lib$(NAME).so $(LDFLAGS)

Release:
	$(CC) $(CFLAGS) $(DEFINES) $(SRC) -o build/lib$(NAME).so $(LDFLAGS) $(OPTIMIZATION_FLAGS)

all:
	$(CC) $(CFLAGS) $(DEFINES) $(SRC) -o build/lib$(NAME).so $(LDFLAGS)

clean:
	rm -f *.o

