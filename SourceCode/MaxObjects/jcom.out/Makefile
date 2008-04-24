include ../projekt.mk

# First we build jcom.in (non-signal version)

SOURCES = ${JCOM_OUT_SOURCE}
#SOURCES = ${JCOM_OUT_SOURCE} $(JCOM_OUT~_SOURCES)
OBJS = $(filter-out $(SOURCES),${JCOM_OUT_OBJS})
LOCAL_INCLUDES = -I.
JCOM_OUT_OUTPUT = jcom.out.mxe
JCOM_OUT~_OUTPUT = jcom.out~.mxe
OUTPUT = $(JCOM_OUT_OUTPUT)

JCOM_OUT_LINK_INPUT = $(OBJS) jcom.out.def 
JCOM_OUT~_LINK_INPUT = jcom.out~.o jcom.out~.def

EXTRA_CXXFLAGS = ${LOCAL_INCLUDES}

include ../infra/common.mk
include ../infra/makedep.mk

release: $(OBJS) $(OUTPUT)
	@cp $(OUTPUT) $(INSTALL_DIR)
	@cp $(JCOM_OUT~_OUTPUT) $(INSTALL_DIR)

debug: $(OBJS) $(OUTPUT)
	@cp $(OUTPUT) $(INSTALL_DIR)
	@cp $(JCOM_OUT~_OUTPUT) $(INSTALL_DIR)

$(OUTPUT): 
	$(CXX) -shared -mno-cygwin -o $(JCOM_OUT_OUTPUT) $(JCOM_OUT_LINK_INPUT) $(MAX_INCLUDES) $(MAX_LIB_INCLUDES) $(LIBS)
	$(CXX) -DJCOM_OUT_TILDE $(CXXFLAGS) $(EXTRA_CXXFLAGS) -c jcom.out.cpp -o jcom.out~.o
	$(CXX) -shared -mno-cygwin -o $(JCOM_OUT~_OUTPUT) $(JCOM_OUT~_LINK_INPUT) $(MAX_INCLUDES) $(MAX_LIB_INCLUDES) $(LIBS)

clean:
	rm -f $(OBJS)
	rm -f $(DEPENDS)
	rm -f $(OUTPUT)
	rm -f $(JCOM_OUT~_OUTPUT)
	rm -f jcom.out~.o



