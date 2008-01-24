NAME = TTBlue
CC = g++

########################################

INCLUDES = -I../includes/core
INCLUDES += -I../includes/units

#LIB_INCLUDES = -L../../library/build


#########################################
#MAX_LIBS = -lMaxAPI -lMaxAudio
#TT_LIB = -lTTBlue
#
#LIBS = ${TT_LIB} ${MAX_LIBS} 


#########################################

OPTIMIZATION_FLAGS = -O2
DEFINES = -D__DEBUG__

CFLAGS = ${OPTIMIZATION_FLAGS} -Wall -Wno-unknown-pragmas -Wno-conversion -shared -mno-cygwin $(WIN_DEFINES) $(INCLUDES)
LDFLAGS = $(INCLUDES) $(LIB_INCLUDES) $(LIBS)


#########################################

SRC = ../source/core/TTAudioObject.cpp
SRC += ../source/core/TTAudioSignal.cpp
SRC += ../source/core/TTElement.cpp
SRC += ../source/core/TTGlobal.cpp
SRC += ../source/core/TTObject.cpp
SRC += ../source/core/TTSymbol.cpp
SRC += ../source/core/TTValue.cpp
SRC += ../source/core/TTValueCache.cpp

SRC += ../source/units/TTBandpassButterworth2.cpp
SRC += ../source/units/TTBandrejectButterworth2.cpp
SRC += ../source/units/TTCrossfade.cpp
SRC += ../source/units/TTDCBlock.cpp
SRC += ../source/units/TTDegrade.cpp
SRC += ../source/units/TTGain.cpp
SRC += ../source/units/TTHighpassButterworth2.cpp
SRC += ../source/units/TTHighpassLinkwitzRiley4.cpp
SRC += ../source/units/TTLimiter.cpp
SRC += ../source/units/TTLowpassButterworth2.cpp
SRC += ../source/units/TTLowpassLinkwitzRiley4.cpp
SRC += ../source/units/TTLowpassOnePole.cpp
SRC += ../source/units/TTOverdrive.cpp
SRC += ../source/units/TTRamp.cpp


OBJ = ../source/core/TTAudioObject.o
OBJ += ../source/core/TTAudioSignal.o
OBJ += ../source/core/TTElement.o
OBJ += ../source/core/TTGlobal.o
OBJ += ../source/core/TTObject.o
OBJ += ../source/core/TTSymbol.o
OBJ += ../source/core/TTValue.o
OBJ += ../source/core/TTValueCache.o

OBJ += ../source/units/TTBandpassButterworth2.o
OBJ += ../source/units/TTBandrejectButterworth2.o
OBJ += ../source/units/TTCrossfade.o
OBJ += ../source/units/TTDCBlock.o
OBJ += ../source/units/TTDegrade.o
OBJ += ../source/units/TTGain.o
OBJ += ../source/units/TTHighpassButterworth2.o
OBJ += ../source/units/TTHighpassLinkwitzRiley4.o
OBJ += ../source/units/TTLimiter.o
OBJ += ../source/units/TTLowpassButterworth2.o
OBJ += ../source/units/TTLowpassLinkwitzRiley4.o
OBJ += ../source/units/TTLowpassOnePole.o
OBJ += ../source/units/TTOverdrive.o
OBJ += ../source/units/TTRamp.o


#########################################

all:
	$(CC) $(CFLAGS) $(SRC) -o build/TTBlue.dll -export-all-symbols $(LDFLAGS)


clean:
	rm -f *.o
	





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
	
