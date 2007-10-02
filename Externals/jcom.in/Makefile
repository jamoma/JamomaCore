include ../projekt.mk

# First we build jcom.in (non-signal version)

SOURCES = ${JCOM_IN_SOURCE}
#SOURCES = ${JCOM_IN_SOURCE} $(JCOM_IN~_SOURCES)
OBJS = $(filter-out $(SOURCES),${JCOM_IN_OBJS})
LOCAL_INCLUDES = -I.
JCOM_IN_OUTPUT = jcom.in.mxe
JCOM_IN~_OUTPUT = jcom.in~.mxe
OUTPUT = $(JCOM_IN_OUTPUT)

JCOM_IN_LINK_INPUT = $(OBJS) jcom.in.def $(CORE_OBJS)
JCOM_IN~_LINK_INPUT = jcom.in~.o jcom.in~.def $(CORE_OBJS)

EXTRA_CXXFLAGS = ${LOCAL_INCLUDES}

include ../infra/common.mk
include ../infra/makedep.mk

release: $(OBJS) $(OUTPUT)
	@cp $(OUTPUT) $(INSTALL_DIR)
	@cp $(JCOM_IN~_OUTPUT) $(INSTALL_DIR)

debug: $(OBJS) $(OUTPUT)
	@cp $(OUTPUT) $(INSTALL_DIR)
	@cp $(JCOM_IN~_OUTPUT) $(INSTALL_DIR)

$(OUTPUT): 
	$(CXX) -shared -mno-cygwin -o $(JCOM_IN_OUTPUT) $(JCOM_IN_LINK_INPUT) $(MAX_INCLUDES) $(MAX_LIB_INCLUDES) -lMaxAPI -lMaxAudio
	$(CXX) -DJCOM_IN_TILDE $(CXXFLAGS) $(EXTRA_CXXFLAGS) -c jcom.in.cpp -o jcom.in~.o
	$(CXX) -shared -mno-cygwin -o $(JCOM_IN~_OUTPUT) $(JCOM_IN~_LINK_INPUT) $(MAX_INCLUDES) $(MAX_LIB_INCLUDES) -lMaxAPI -lMaxAudio

clean:
	rm -f $(OBJS)
	rm -f $(DEPENDS)
	rm -f $(OUTPUT)
	rm -f $(JCOM_IN~_OUTPUT)
	rm -f jcom.in~.o



