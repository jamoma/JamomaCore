NAME = tt.overdrive~


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


#########################################

CC = g++

all:
	$(CC) $(CFLAGS) $(SRC) -o $(NAME).mxe $(DEF) $(LDFLAGS)


clean:
	rm -f *.o
