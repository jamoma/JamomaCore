include ../projekt.mk

SOURCES = ${JCOM_SUM%_SOURCE}
OBJS = $(filter-out $(SOURCES),${JCOM_SUM%_OBJS})
LOCAL_INCLUDES = -I.
OUTPUT = jcom.sum%.mxe
LINK_INPUT = $(OBJS) jcom.sum%.def $(CORE_OBJS)

EXTRA_CXXFLAGS = ${LOCAL_INCLUDES}

include ../infra/common.mk
include ../infra/makedep.mk

EXTRA_CXXFLAGS += ${JITTER_INCLUDES}

release: $(OBJS) $(OUTPUT)
	@cp $(OUTPUT) $(INSTALL_DIR)

debug: $(OBJS) $(OUTPUT)
	@cp $(OUTPUT) $(INSTALL_DIR)

$(OUTPUT):
	$(CXX) -Xlinker --allow-multiple-definition -shared -mno-cygwin -o $(OUTPUT) $(LINK_INPUT) $(MAX_INCLUDES) $(MAX_LIB_INCLUDES) $(JITTER_LIB_INCLUDES) $(JITTER_LIB) -lMaxAPI 

clean:
	rm -f $(OBJS)
	rm -f $(DEPENDS)
	rm -f $(OUTPUT)

