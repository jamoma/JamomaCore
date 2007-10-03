include ../projekt.mk

SOURCES = ${JCOM_PARAMETER_SOURCE}
OBJS = $(filter-out $(SOURCES),${JCOM_PARAMETER_OBJS})
LOCAL_INCLUDES = -I. -I./c74
OUTPUT = jcom.parameter.mxe
LINK_INPUT = $(OBJS) jcom.parameter.def $(CORE_OBJS)

EXTRA_CXXFLAGS = ${LOCAL_INCLUDES}

include ../infra/common.mk
include ../infra/makedep.mk

release: $(OBJS) $(OUTPUT)
	@cp $(OUTPUT) $(INSTALL_DIR)

debug: $(OBJS) $(OUTPUT)
	@cp $(OUTPUT) $(INSTALL_DIR)

$(OUTPUT):
	$(CXX) -DWIN_VERSION c74/ext_pattr_bundle.c ../../ramplib/ramplib_api/RampUnitWrap.cpp -shared -mno-cygwin -o $(OUTPUT) $(LINK_INPUT) $(MAX_INCLUDES) $(MAX_LIB_INCLUDES) -lMaxAPI -lMaxAudio

clean:
	rm -f $(OBJS)
	rm -f $(DEPENDS)
	rm -f $(OUTPUT)

