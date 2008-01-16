include ../projekt.mk

SOURCES = ${JCOM_RECEIVE_SOURCE}
OBJS = $(filter-out $(SOURCES),${JCOM_RECEIVE_OBJS})
LOCAL_INCLUDES = -I.
OUTPUT = jcom.receive.mxe
LINK_INPUT = $(OBJS) jcom.receive.def 

EXTRA_CFLAGS = ${LOCAL_INCLUDES}

include ../infra/common.mk
include ../infra/makedep.mk

WIN_DEFINES = -DWIN_VERSION -DTT_TARGET_MAX -DWIN_EXT_VERSION

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

