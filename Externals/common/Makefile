include ../projekt.mk

SOURCES = jcom.core.cpp 
JCOM_CORE_OBJS = $(SOURCES:.cpp=.o) $(SOURCES:.c=.o)
OBJS = $(filter-out $(SOURCES),${JCOM_CORE_OBJS})
LOCAL_INCLUDES = -I.

EXTRA_CFLAGS = ${LOCAL_INCLUDES}

include ../infra/common.mk

include ../infra/makedep.mk

release: $(OBJS) commonsyms.o
	
debug: $(OBJS) commonsyms.o

# needed so come link time there aren't unresolveds for _sym_nothing,
# common_symbols_init(), etc.
commonsyms.o:
	$(CC) -c -shared -mno-cygwin -o commonsyms.o $(MAX_INCLUDES) $(WIN_DEFINES) /maxmspsdk/c74support/max-includes/common/commonsyms.c
	
clean:
	rm -f $(OBJS)
	rm -f commonsyms.o
	rm -f $(DEPENDS)
