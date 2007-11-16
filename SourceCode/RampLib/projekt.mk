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
LINEAR_QUEUE_SOURCE = linear.queue.c linear.queue.def
LINEAR_QUEUE_OBJS = ${LINEAR_QUEUE_SOURCE:.c=.o}

LINEAR_SCHED_SOURCE = linear.sched.c linear.sched.def
LINEAR_SCHED_OBJS = ${LINEAR_SCHED_SOURCE:.c=.o}

NONE_SOURCE = none.c none.def
NONE_OBJS = ${NONE_SOURCE:.c=.o}


ALL_OBJECTS = ${LINEAR_QUEUE_OBJS} ${LINEAR_SCHED_OBJS} ${NONE_OBJS} 

