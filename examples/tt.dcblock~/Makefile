NAME = tt.dcblock~

CC = g++


########################################

MAX_INCLUDES = -I../maxmspsdk/c74support/max-includes \
   -I../maxmspsdk/c74support/msp-includes \
   -I../maxmspsdk/c74support/max-includes/common

MAX_LIB_INCLUDES = -L../maxmspsdk/c74support/max-includes \
   -L../maxmspsdk/c74support/msp-includes

TT_INCLUDES = -I../../includes/core \
   -I../../includes/units

TT_LIB_INCLUDES = -L../../library/build

INCLUDES = $(MAX_INCLUDES) $(TT_INCLUDES)


#########################################
MAX_LIBS = -lMaxAPI -lMaxAudio
TT_LIB = -lTTBlue

LIBS = ${TT_LIB} ${MAX_LIBS} 


#########################################

OPTIMIZATION_FLAGS = -O2
WIN_DEFINES = -DWIN_VERSION -DWIN_EXT_VERSION

CFLAGS = ${OPTIMIZATION_FLAGS} -Wall -Wno-unknown-pragmas -Wno-conversion -shared -mno-cygwin $(WIN_DEFINES) $(INCLUDES)
LDFLAGS = -L$(MAX)/max-includes $(MAX_INCLUDES) $(TT_LIB_INCLUDES) $(MAX_LIB_INCLUDES) $(LIBS)


SRC = $(NAME).cpp ../maxmspsdk/c74support/max-includes/common/commonsyms.c
OBJ = $(NAME).o
DEF = $(NAME).def


#SOURCES = ${JCOM_AED2XYZ_SOURCE}
#OBJS = $(filter-out $(SOURCES),${JCOM_AED2XYZ_OBJS})
#LOCAL_INCLUDES = -I.
#OUTPUT = jcom.aed2xyz.mxe
#LINK_INPUT = $(OBJS) jcom.aed2xyz.def 



all:

#$(NAME).o: $(NAME).c
#	$(CC) $(CFLAGS) $(SRC)
#	$(CC) -o $(OBJ) $(DEF) $(LDFLAGS)
#	$(CC) -shared -mno-cygwin -o $(NAME).mxe $(OBJ) $(DEF) $(LDFLAGS)
	$(CC) $(CFLAGS) $(SRC) -o $(NAME).mxe $(DEF) $(LDFLAGS)


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
	
