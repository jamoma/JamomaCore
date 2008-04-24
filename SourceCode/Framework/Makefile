NAME = Jamoma
CC = g++

########################################

INCLUDES = -I./source
INCLUDES += -I./DataspaceLib
INCLUDES += -I./FunctionLib
INCLUDES += -I./Internals
INCLUDES += -I../RampLib/ramplib_api
INCLUDES += -I../ThirdParty/TTBlue/includes/core
INCLUDES += -I../ThirdParty/TTBlue/units
INCLUDES += -I/maxmspsdk/c74support/max-includes
INCLUDES += -I/maxmspsdk/c74support/msp-includes


#########################################

LIB_INCLUDES = -L../ThirdParty/TTBlue/library/build
LIB_INCLUDES += -L/maxmspsdk/c74support/max-includes
LIB_INCLUDES += -L/maxmspsdk/c74support/msp-includes

LIBS = -lTTBlue
LIBS += -lMaxAPI
LIBS += -lMaxAudio


#########################################

OPTIMIZATION_FLAGS = -O2
DEFINES = -D__DEBUG__ -DWIN_VERSION -DEXT_WIN_VERSION
OPTIONS = -Wall -Wno-unknown-pragmas -Wno-conversion -shared -mno-cygwin

CFLAGS = ${OPTIMIZATION_FLAGS} $(OPTIONS) $(DEFINES) $(INCLUDES)
LDFLAGS = $(INCLUDES) $(LIB_INCLUDES) $(LIBS)


#########################################

SRC = source/Jamoma.cpp
SRC += source/JamomaClock.cpp
SRC += source/JamomaObject.cpp
SRC += source/JamomaScheduler.cpp
SRC += source/JamomaSymbols.cpp
SRC += source/jcom.core.cpp

SRC += DataspaceLib/DataspaceLib.cpp
SRC += DataspaceLib/AngleDataspace.cpp
SRC += DataspaceLib/ColorDataspace.cpp
SRC += DataspaceLib/DistanceDataspace.cpp
SRC += DataspaceLib/GainDataspace.cpp
SRC += DataspaceLib/NoneDataspace.cpp
SRC += DataspaceLib/PitchDataspace.cpp
SRC += DataspaceLib/PositionDataspace.cpp
SRC += DataspaceLib/TemperatureDataspace.cpp
SRC += DataspaceLib/TimeDataspace.cpp

SRC += FunctionLib/FunctionLib.cpp
SRC += FunctionLib/CosineFunction.cpp
SRC += FunctionLib/LinearFunction.cpp
SRC += FunctionLib/LowpassFunction.cpp
SRC += FunctionLib/PowerFunction.cpp
SRC += FunctionLib/TanhFunction.cpp

SRC += Internals/jcom.receive.cpp
SRC += Internals/jcom.receivemaster.cpp
SRC += Internals/jcom.send.cpp
SRC += /maxmspsdk/c74support/max-includes/common/commonsyms.c

SRC += ../RampLib/ramplib_api/RampUnitWrap.cpp


#########################################

all:
	$(CC) $(CFLAGS) $(SRC) -o $(NAME).dll $(LDFLAGS) jamoma.def

clean:
	rm -f *.o
