include ../projekt.mk

SOURCES = jcom.core.cpp 
JCOM_CORE_OBJS = $(SOURCES:.cpp=.o) $(SOURCES:.c=.o)
OBJS = $(filter-out $(SOURCES),${JCOM_CORE_OBJS})
LOCAL_INCLUDES = -I.

EXTRA_CXXFLAGS = ${LOCAL_INCLUDES}

include ../infra/common.mk

include ../infra/makedep.mk

release: $(OBJS) commonsyms.o
	$(CXX) -DJCOM_AUDIO_OBJECT $(CXXFLAGS) $(EXTRA_CXXFLAGS) -c jcom.core.cpp -o jcom.core~.o
	
debug: $(OBJS) commonsyms.o
	$(CXX) -DJCOM_AUDIO_OBJECT $(CXXFLAGS) $(EXTRA_CXXFLAGS) -c jcom.core.cpp -o jcom.core~.o

# needed so come link time there aren't unresolveds for _sym_nothing,
# common_symbols_init(), etc.
commonsyms.o:
	$(CC) -c -shared -mno-cygwin -o commonsyms.o $(MAX_INCLUDES) $(WIN_DEFINES) /maxmspsdk/c74support/max-includes/common/commonsyms.c

	
clean:
	rm -f $(OBJS)
	rm -f commonsyms.o
	rm -f $(DEPENDS)
	rm -f jcom.core~.o
