include ../projekt.mk

SOURCES = ${JCOM_HUB_SOURCE}
OBJS = $(filter-out $(SOURCES),${JCOM_HUB_OBJS})
LOCAL_INCLUDES = -I.
OUTPUT = jcom.hub.mxe
LINK_INPUT = $(OBJS) jcom.hub.def $(CORE_OBJS)
LIBXML = -L../../Externals_3rd_Party/libxml2/win32/bin 
LIBXML += -L../../Externals_3rd_Party/libxml2/win32/lib 
#LIBXML = -L/usr/bin 
LIBICONV = -L../../Externals_3rd_Party/libiconv/bin


EXTRA_CXXFLAGS = ${LOCAL_INCLUDES} -DLIBXML_STATIC -DLIBXSLT_STATIC -DLIBEXSLT_STATIC -DXMLSEC_STATIC -DLIBXML_THREAD_ENABLED

include ../infra/common.mk
include ../infra/makedep.mk

release: $(OBJS) $(OUTPUT)
	@cp $(OUTPUT) $(INSTALL_DIR)

debug: $(OBJS) $(OUTPUT)
	@cp $(OUTPUT) $(INSTALL_DIR)

$(OUTPUT):
	$(CXX) -shared -mno-cygwin -o $(OUTPUT) $(LINK_INPUT) $(MAX_INCLUDES) $(MAX_LIB_INCLUDES) $(LIBICONV) $(LIBXML) -lMaxAPI -lMaxAudio -llibiconv -llibxml2

clean:
	rm -f $(OBJS)
	rm -f $(DEPENDS)
	rm -f $(OUTPUT)

