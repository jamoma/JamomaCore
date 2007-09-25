# common stuff

# compilers
CC	= gcc
CXX = gcc

LOCAL_DEPS = -MM
ALL_DEPS = -M
DEP_CHECK_TYPE = ${ALL_DEPS}

WIN_DEFINES = -DWIN_VERSION -DWIN_EXT_VERSION -DTT_TARGET_MAX

MAX_INCLUDES = -I/maxmspsdk/c74support/max-includes \
   -I/maxmspsdk/c74support/msp-includes \
   -I/maxmspsdk/c74support/common

MAX_LIB_INCLUDES = -L/maxmspsdk/c74support/max-includes \
   -L/maxmspsdk/c74support/msp-includes \
   -L/maxmspsdk/c74support/common

TT_INCLUDES = -I../../Externals_3rd_Party/ttblue/dsplib

OPTIMIZATION_FLAGS = -O2
# c compiler flags
RELEASE_CFLAGS = ${OPTIMIZATION_FLAGS} -Wall -Wno-unknown-pragmas -Wno-conversion -shared -mno-cygwin $(WIN_DEFINES) $(MAX_INCLUDES) $(TT_INCLUDES)

# c++ compiler flags
RELEASE_CXXFLAGS = ${OPTIMIZATION_FLAGS} -Wall -Wno-unknown-pragmas -Wno-conversion -shared -mno-cygwin $(WIN_DEFINES) $(MAX_INCLUDES) $(TT_INCLUDES)

DEBUG_CFLAGS = -g -Wall -Wno-unknown-pragmas -Wno-conversion -shared -mno-cygwin $(WIN_DEFINES) $(MAX_INCLUDES) $(TT_INCLUDES)
DEBUG_CXXFLAGS = -g -Wall -Wno-unknown-pragmas -Wno-conversion -shared -mno-cygwin $(WIN_DEFINES) $(MAX_INCLUDES) $(TT_INCLUDES)

INSTALL_DIR = ../../Jamoma/library/externals/windows

MAX_LIBS = -lMaxAPI -lMaxAudio

ifeq "$(MAKECMDGOALS)" "release"
	CFLAGS ?= $(RELEASE_CFLAGS)
	CXXFLAGS ?= $(RELEASE_CXXFLAGS)
endif
ifeq "$(MAKECMDGOALS)" "debug"
	CFLAGS ?= $(DEBUG_CFLAGS)
	CXXFLAGS ?= $(DEBUG_CXXFLAGS)
endif


# suffix rules
#-------------------------------------------------------------------------------
.SUFFIX:
.SUFFIX: .o .c .cpp .C .d

%.o: %.cpp 
	${CXX} ${CXXFLAGS} $(EXTRA_CXXFLAGS) -c $< -o ./${*}.o

%.o: %.c
	${CC} ${CFLAGS} $(EXTRA_CFLAGS) -c $< -o ./${*}.o

%.o: %.C 
	${CC} ${CFLAGS} $(EXTRA_CFLAGS) -c $< -o ./${*}.o


# These little blurbs take advantage of sed to translate a target like
# main.o: main.c defs.h   
#
# into
# main.o main.d: main.c defs.h
#
# This makes each of our compiler generated dependency files depend on all of the
# source and header files needed to make an object file.  This means our 
# dependencies will always be up to date.
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

%.d: %.C
	@set -e; rm -f $@; \
	$(CC) -M $(CLAGS) $(EXTRA_CFLAGS) $< > $@.$$$$; \
	sed 's,\($*\)\.o[ :]*,\1.o $@ : ,g' < $@.$$$$ > $@; \
	rm -f $@.$$$$
	
