include ../projekt.mk

SOURCES = ${JCOM_AED2XYZ_SOURCE}
OBJS = $(filter-out $(SOURCES),${JCOM_AED2XYZ_OBJS})
LOCAL_INCLUDES = -I.
OUTPUT = jcom.aed2xyz.mxe
LINK_INPUT = $(OBJS) jcom.aed2xyz.def 

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

