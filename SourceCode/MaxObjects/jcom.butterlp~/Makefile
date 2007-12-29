include ../projekt.mk

SOURCES = ${JCOM_SATURATION~_SOURCE}
OBJS = $(filter-out $(SOURCES),${JCOM_SATURATION~_OBJS})
LOCAL_INCLUDES = -I.
OUTPUT = jcom.butterlp~.mxe
LINK_INPUT = $(OBJS) jcom.butterlp~.def 

EXTRA_CFLAGS = ${LOCAL_INCLUDES}

include ../infra/common.mk
include ../infra/makedep.mk

release: $(OBJS) $(OUTPUT)
	@cp $(OUTPUT) $(INSTALL_DIR)

debug: $(OBJS) $(OUTPUT)
	@cp $(OUTPUT) $(INSTALL_DIR)

$(OUTPUT):
	$(CXX) -Xlinker --allow-multiple-definition -shared -mno-cygwin -o $(OUTPUT) $(LINK_INPUT) $(MAX_INCLUDES) $(MAX_LIB_INCLUDES) $(LIBS)

clean:
	rm -f $(OBJS)
	rm -f $(DEPENDS)
	rm -f $(OUTPUT)

