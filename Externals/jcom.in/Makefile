include ../projekt.mk

# First we build jcom.in (non-signal version)

SOURCES = ${JCOM_IN_SOURCE}
OBJS = $(filter-out $(SOURCES),${JCOM_IN_OBJS})
LOCAL_INCLUDES = -I.
OUTPUT = jcom.in.mxe
LINK_INPUT = $(OBJS) jcom.in.def $(CORE_OBJS)

EXTRA_CFLAGS = ${LOCAL_INCLUDES}

include ../infra/common.mk
include ../infra/makedep.mk

release: $(OBJS) $(OUTPUT)
	@cp $(OUTPUT) $(INSTALL_DIR)

debug: $(OBJS) $(OUTPUT)
	@cp $(OUTPUT) $(INSTALL_DIR)

$(OUTPUT):
	$(CXX) -shared -mno-cygwin -o $(OUTPUT) $(LINK_INPUT) $(MAX_INCLUDES) $(MAX_LIB_INCLUDES) -lMaxAPI -lMaxAudio

clean:
	rm -f $(OBJS)
	rm -f $(DEPENDS)
	rm -f $(OUTPUT)



# Then we build jcom.in~ (msp version)

SOURCES = ${JCOM_IN_SOURCE}
OBJS = $(filter-out $(SOURCES),${JCOM_IN~_OBJS})
LOCAL_INCLUDES = -I.
OUTPUT = jcom.in~.mxe
LINK_INPUT = $(OBJS) jcom.in~.def $(CORE_OBJS)

EXTRA_CFLAGS = ${LOCAL_INCLUDES}

include ../infra/common.mk
include ../infra/makedep.mk

release: $(OBJS) $(OUTPUT)
	@cp $(OUTPUT) $(INSTALL_DIR)

debug: $(OBJS) $(OUTPUT)
	@cp $(OUTPUT) $(INSTALL_DIR)

$(OUTPUT):
	$(CXX) -shared -mno-cygwin -o $(OUTPUT) $(LINK_INPUT) $(MAX_INCLUDES) $(MAX_LIB_INCLUDES) -lMaxAPI -lMaxAudio

clean:
	rm -f $(OBJS)
	rm -f $(DEPENDS)
	rm -f $(OUTPUT)



