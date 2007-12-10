include ../projekt.mk

SOURCES = ${JCOM_HUB_SOURCE}
OBJS = $(filter-out $(SOURCES),${JCOM_HUB_OBJS})
LOCAL_INCLUDES = -I.
OUTPUT = jcom.hub.mxe
LINK_INPUT = $(OBJS) jcom.hub.def
LIBXML = -L../../ThirdParty/libxml2/win32/bin 
LIBXML += -L../../ThirdParty/libxml2/win32/lib 
#LIBXML = -L/usr/bin 
LIBICONV = -L../../ThirdParty/libiconv


EXTRA_CXXFLAGS = ${LOCAL_INCLUDES} -DLIBXML_STATIC -DLIBXSLT_STATIC -DLIBEXSLT_STATIC -DXMLSEC_STATIC -DLIBXML_THREAD_ENABLED

include ../infra/common.mk
include ../infra/makedep.mk

# this is here because if TT_INCLUDE_CPP is defined when building jcom.hub it
# won't link due to multiple definitions
WIN_DEFINES = -DWIN_VERSION -DTT_TARGET_MAX -DWIN_EXT_VERSION

LIBS += -llibiconv
LIBS += -llibxml2

release: $(OBJS) $(OUTPUT)
	@cp $(OUTPUT) $(INSTALL_DIR)

debug: $(OBJS) $(OUTPUT)
	@cp $(OUTPUT) $(INSTALL_DIR)

$(OUTPUT):
	$(CXX) -Xlinker --allow-multiple-definition -shared -mno-cygwin -o $(OUTPUT) $(LINK_INPUT) $(MAX_INCLUDES) $(MAX_LIB_INCLUDES) $(LIBICONV) $(LIBXML) $(LIBS)

clean:
	rm -f $(OBJS)
	rm -f $(DEPENDS)
	rm -f $(OUTPUT)

