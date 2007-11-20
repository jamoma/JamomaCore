include ../projekt.mk

SOURCES = ${JCOM_DELTA2_SOURCE}
OBJS = $(filter-out $(SOURCES),${JCOM_DELTA2_OBJS})
LOCAL_INCLUDES = -I.
OUTPUT = jcom.delta2.mxe
LINK_INPUT = $(OBJS) jcom.delta2.def 

EXTRA_CFLAGS = ${LOCAL_INCLUDES}

include ../infra/common.mk
include ../infra/makedep.mk

release: $(OBJS) $(OUTPUT)
	@cp $(OUTPUT) $(INSTALL_DIR)

debug: $(OBJS) $(OUTPUT)
	@cp $(OUTPUT) $(INSTALL_DIR)

$(OUTPUT):
	$(CXX) -shared -mno-cygwin -o $(OUTPUT) $(LINK_INPUT) $(MAX_INCLUDES) $(MAX_LIB_INCLUDES) $(LIBS)

clean:
	rm -f $(OBJS)
	rm -f $(DEPENDS)
	rm -f $(OUTPUT)

