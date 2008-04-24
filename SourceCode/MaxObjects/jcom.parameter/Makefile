include ../projekt.mk

SOURCES = ${JCOM_PARAMETER_SOURCE}
OBJS = $(filter-out $(SOURCES),${JCOM_PARAMETER_OBJS})
LOCAL_INCLUDES = -I. -I./c74
OUTPUT = jcom.parameter.mxe
LINK_INPUT = $(OBJS) jcom.parameter.def 
JCOM_MESSAGE_LINK_INPUT = jcom.message.o jcom.parameter.clip.o jcom.message.def 
JCOM_MESSAGE_OUTPUT = jcom.message.mxe

EXTRA_CXXFLAGS = ${LOCAL_INCLUDES}

include ../infra/common.mk
include ../infra/makedep.mk

WIN_DEFINES = -DWIN_VERSION -DTT_TARGET_MAX -DWIN_EXT_VERSION

release: $(OBJS) $(OUTPUT)
	@cp $(OUTPUT) $(INSTALL_DIR)
	@cp $(JCOM_MESSAGE_OUTPUT) $(INSTALL_DIR)

debug: $(OBJS) $(OUTPUT)
	@cp $(OUTPUT) $(INSTALL_DIR)
	@cp $(JCOM_MESSAGE_OUTPUT) $(INSTALL_DIR)

$(OUTPUT):
	$(CXX) -Xlinker --allow-multiple-definition -DWIN_VERSION ../../RampLib/ramplib_api/RampUnitWrap.cpp -shared -mno-cygwin -o $(OUTPUT) $(LINK_INPUT) $(MAX_INCLUDES) $(MAX_LIB_INCLUDES) $(LIBS)
	$(CXX) -Xlinker --allow-multiple-definition -DWIN_VERSION -DJMOD_MESSAGE $(CXXFLAGS) $(EXTRA_CXXFLAGS) -c jcom.parameter.cpp -shared -mno-cygwin -o jcom.message.o $(MAX_INCLUDES)
	$(CXX) -Xlinker --allow-multiple-definition -DWIN_VERSION -DJMOD_MESSAGE ../../RampLib/ramplib_api/RampUnitWrap.cpp -shared -mno-cygwin -o jcom.message.mxe $(JCOM_MESSAGE_LINK_INPUT) $(MAX_INCLUDES) $(MAX_LIB_INCLUDES) $(LIBS)

clean:
	rm -f $(OBJS)
	rm -f $(DEPENDS)
	rm -f $(OUTPUT)
	rm -f jcom.message.o
	rm -f jcom.message.mxe

