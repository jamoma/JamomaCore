
CC  = gcc
CXX = g++
AR  = ar

ARFLAGS = cr


FUNCTION_LIB_SOURCE = ../FunctionLib/FunctionLib.cpp
FUNCTION_LIB_SOURCE += ../FunctionLib/LinearFunction.cpp
FUNCTION_LIB_SOURCE += ../FunctionLib/TanhFunction.cpp
FUNCTION_LIB_SOURCE += ../FunctionLib/CosineFunction.cpp
FUNCTION_LIB_SOURCE += ../FunctionLib/PowerFunction.cpp
FUNCTION_LIB_SOURCE += ../FunctionLib/LowpassFunction.cpp

DATASPACE_LIB_SOURCE = ../DataspaceLib/DataspaceLib.cpp
DATASPACE_LIB_SOURCE += ../DataspaceLib/AngleDataspace.cpp
DATASPACE_LIB_SOURCE += ../DataspaceLib/ColorDataspace.cpp
DATASPACE_LIB_SOURCE += ../DataspaceLib/DistanceDataspace.cpp
DATASPACE_LIB_SOURCE += ../DataspaceLib/GainDataspace.cpp
DATASPACE_LIB_SOURCE += ../DataspaceLib/NoneDataspace.cpp
DATASPACE_LIB_SOURCE += ../DataspaceLib/PitchDataspace.cpp
DATASPACE_LIB_SOURCE += ../DataspaceLib/PositionDataspace.cpp
DATASPACE_LIB_SOURCE += ../DataspaceLib/TemperatureDataspace.cpp
DATASPACE_LIB_SOURCE += ../DataspaceLib/TimeDataspace.cpp

JAMOMA_LIB_SOURCE = Jamoma.cpp JamomaClock.cpp JamomaObject.cpp JamomaScheduler.cpp JamomaSymbols.cpp jcom.core.cpp 
JAMOMA_LIB_SOURCE += ${FUNCTION_LIB_SOURCE} ${DATASPACE_LIB_SOURCE}

JAMOMA_LIB_OBJS = ${JAMOMA_LIB_SOURCE:.cpp=.o}
JAMOMA_LIB_OBJS += commonsyms.o
JAMOMA_LIB_OBJS += ../c74/ext_pattr_bundle.o


JAMOMA_LIB_NAME = JamomaFramework.lib

MAX_INCLUDES = -I/maxmspsdk/c74support/max-includes \
   -I/maxmspsdk/c74support/msp-includes \
   -I/maxmspsdk/c74support/common 

#   -I/maxmspsdk/c74support/common \
#   -I../Externals_3rd_Party/ttblue/dsplib \
#   -I../../ramplib_api

TT_BLUE_INCLUDES = -I../../ThirdParty/ttblue/dsplib
RAMPLIB_INCLUDES = -I../../RampLib/ramplib_api
PATTR_INCLUDES = -I../c74
FUNC_LIB_INCLUDES = -I../FunctionLib -I./
DATASPACE_LIB_INCLUDES = -I../DataspaceLib -I./

MAX_LIB_INCLUDES = -L/maxmspsdk/c74support/max-includes \
   -L/maxmspsdk/c74support/msp-includes \
   -L/maxmspsdk/c74support/common


INCLUDES = ${MAX_INCLUDES} ${TT_BLUE_INCLUDES} ${RAMPLIB_INCLUDES} ${PATTR_INCLUDES} ${FUNC_LIB_INCLUDES} ${DATASPACE_LIB_INCLUDES}
#WIN_DEFINES = -DWIN_VERSION -DWIN_EXT_VERSION -DTT_TARGET_MAX -DWIN_EXT_VERSION -DTT_INCLUDE_CPP
WIN_DEFINES = -DWIN_VERSION -DWIN_EXT_VERSION -DTT_TARGET_MAX -DWIN_EXT_VERSION 


RELEASE_CXXFLAGS = -O2 -Wall -Wno-unknown-pragmas -Wno-conversion -shared -mno-cygwin -DWIN_VERSION ${INCLUDES}

CXXFLAGS = ${RELEASE_CXXFLAGS}

%.d: %.c
	@set -e; rm -f $@; \
	$(CC) -M $(CFLAGS) $(EXTRA_CFLAGS) $< > $@.$$$$; \
	sed 's,\($*\)\.o[ :]*,\1.o $@ : ,g' < $@.$$$$ > $@; \
	rm -f $@.$$$$

%.d: %.cpp
	@set -e; rm -f $@; \
	$(CXX) -M $(CXXFLAGS) $(EXTRA_CXXFLAGS) $< > $@.$$$$; \
	sed 's,\($*\)\.o[ :]*,\1.o $@ : ,g' < $@.$$$$ > $@; \
	rm -f $@.$$$$


SOURCES = ${JAMOMA_LIB_SOURCE}
TEMP_DEPENDS = $(SOURCES:.C=.d) $(SOURCES:.c=.d) $(SOURCES:.cpp=.d)
# This ensures that we don't rm -f source files when we do a make clean
DEPENDS = $(filter-out $(SOURCES),$(TEMP_DEPENDS))
# include the header file dependencies for the project
# source file.

include $(DEPENDS)


# release
release: 
	echo ${INCLUDES}
	${MAKE} ${JAMOMA_LIB_NAME}

# debug symbols currently aren't being enabled when you build this lib as debug
debug: 
	${MAKE} ${JAMOMA_LIB_NAME}

clean:
	rm -f $(JAMOMA_LIB_OBJS) $(JAMOMA_LIB_NAME)
	rm -f $(DEPENDS)


${JAMOMA_LIB_NAME}: ${JAMOMA_LIB_OBJS}
	${AR} ${ARFLAGS} $@ $?

commonsyms.o:
	$(CC) -c -shared -mno-cygwin -o commonsyms.o $(MAX_INCLUDES) $(WIN_DEFINES) /maxmspsdk/c74support/max-includes/common/commonsyms.c

../c74/ext_pattr_bundle.o:
	$(CC) -c -shared -mno-cygwin -o ../c74/ext_pattr_bundle.o $(MAX_INCLUDES) $(WIN_DEFINES) ../c74/ext_pattr_bundle.c 

function_lib:
	$(CXX) -c -shared -mno-cygwin -o ../c74/ext_pattr_bundle.o $(INCLUDES) $(WIN_DEFINES) ../c74/ext_pattr_bundle.c 


