
CC  = gcc
CXX = g++
AR  = ar

ARFLAGS = cr


JAMOMA_LIB_SOURCE = Jamoma.cpp jcom.core.cpp 
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

MAX_LIB_INCLUDES = -L/maxmspsdk/c74support/max-includes \
   -L/maxmspsdk/c74support/msp-includes \
   -L/maxmspsdk/c74support/common


INCLUDES = ${MAX_INCLUDES} ${TT_BLUE_INCLUDES} ${RAMPLIB_INCLUDES} ${PATTR_INCLUDES}
#WIN_DEFINES = -DWIN_VERSION -DWIN_EXT_VERSION -DTT_TARGET_MAX -DWIN_EXT_VERSION -DTT_INCLUDE_CPP
WIN_DEFINES = -DWIN_VERSION -DWIN_EXT_VERSION -DTT_TARGET_MAX -DWIN_EXT_VERSION 


RELEASE_CXXFLAGS = -O2 -Wall -Wno-unknown-pragmas -Wno-conversion -shared -mno-cygwin -DWIN_VERSION ${INCLUDES}

CXXFLAGS = ${RELEASE_CXXFLAGS}



release: 
	${MAKE} ${JAMOMA_LIB_NAME}

# debug symbols currently aren't being enabled when you build this lib as debug
debug: 
	${MAKE} ${JAMOMA_LIB_NAME}



${JAMOMA_LIB_NAME}: ${JAMOMA_LIB_OBJS}
	${AR} ${ARFLAGS} $@ $?

commonsyms.o:
	$(CC) -c -shared -mno-cygwin -o commonsyms.o $(MAX_INCLUDES) $(WIN_DEFINES) /maxmspsdk/c74support/max-includes/common/commonsyms.c

../c74/ext_pattr_bundle.o:
	$(CC) -c -shared -mno-cygwin -o ../c74/ext_pattr_bundle.o $(MAX_INCLUDES) $(WIN_DEFINES) ../c74/ext_pattr_bundle.c 


