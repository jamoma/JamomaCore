COMMON_INCLUDES = -I../common

MAX_INCLUDES = -I/maxmspsdk/c74support/max-includes \
   -I/maxmspsdk/c74support/msp-includes \
   -I/maxmspsdk/c74support/common \
   -I../Externals_3rd_Party/ttblue/dsplib \
   -I../../ramplib_api

MAX_LIB_INCLUDES = -L/maxmspsdk/c74support/max-includes \
   -L/maxmspsdk/c74support/msp-includes \
   -L/maxmspsdk/c74support/common

COMMON_SOURCE = jcom.core.cpp /maxmspsdk/c74support/max-includes/common/commonsyms.c
JCOM_CORE_OBJS = jcom.core.o commonsyms.o
CORE_OBJS = ../common/jcom.core.o ../common/commonsyms.o

TT_SOURCE = ../../../ThirdParty/ttblue/dsplib/tt_audio_base.cpp
TT_CORE_OBJS = tt_audio_base.o
TT_OBJS = ../../ThirdParty/ttblue/dsplib/tt_audio_base.o

# projects to be built
QUEUE_SOURCE = queue.cpp queue.def
QUEUE_OBJS = ${QUEUE_SOURCE:.cpp=.o}

SCHEDULER_SOURCE = scheduler.cpp scheduler.def
SCHEDULER_OBJS = ${SCHEDULER_SOURCE:.cpp=.o}

NONE_SOURCE = none.cpp none.def
NONE_OBJS = ${NONE_SOURCE:.cpp=.o}


ALL_OBJECTS = ${QUEUE_OBJS} ${SCHEDULER_OBJS} ${NONE_OBJS} 

