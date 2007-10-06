SRC = DoctorOp.m ../MaxObject/MaxObject.m ../MaxObject/MSPObject.m /maxmspsdk/c74support/max-includes/common/commonsyms.c
OUTPUT = dr.op.mxe
OPTIMIZATION_FLAGS = -O2

CC = gcc
CFLAGS = -Wall $(OPTIMIZATION_FLAGS)
LDFLAGS = -mwindows
RM = rm



MAXOBJECT_INCLUDES = -I../MaxObject -I/usr/local/include

MAX_INCLUDES = -I/maxmspsdk/c74support/max-includes \
   -I/maxmspsdk/c74support/msp-includes \
   -I/maxmspsdk/c74support/common

MAX_LIB_INCLUDES = -L/maxmspsdk/c74support/max-includes \
   -L/maxmspsdk/c74support/msp-includes \
   -L/maxmspsdk/c74support/common


WIN_DEFINES = -DWIN_VERSION -DWIN_EXT_VERSION



all:
	$(CC) $(LDFLAGS) -o $(OUTPUT) \
		-Wno-unknown-pragmas -Wno-conversion -shared -mno-cygwin \
		dr.op.def \
		$(WIN_DEFINES) $(MAX_INCLUDES) $(MAXOBJECT_INCLUDES) $(MAX_LIB_INCLUDES) $(SRC) \
		-lMaxAPI \
		-L/usr/local/lib -llibobjc -llibgnustep-base


		SRC = DoctorOp~.m ../MaxObject/MaxObject.m /maxmspsdk/c74support/max-includes/common/commonsyms.c
		OUTPUT = dr.op~.mxe

		$(CC) $(LDFLAGS) -o $(OUTPUT) \
			-Wno-unknown-pragmas -Wno-conversion -shared -mno-cygwin \
			dr.op~.def \
			$(WIN_DEFINES) $(MAX_INCLUDES) $(MAXOBJECT_INCLUDES) $(MAX_LIB_INCLUDES) $(SRC) \
			-lMaxAPI -lMaxAudioAPI\
			-L/usr/local/lib -llibobjc -llibgnustep-base

clean:
	-$(RM) $(OBJ)

