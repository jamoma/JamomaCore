include ../../projekt.mk

SOURCES = ${SCHEDULER_SOURCE}
OBJS = $(filter-out $(SOURCES),${SCHEDULER_OBJS})
LOCAL_INCLUDES = -I. -I../../../Framework/source -I../../../ThirdParty/ttblue/dsplib -I../../../Framework/c74 -I../../../Framework/FunctionLib -L../../../Framework/source
OUTPUT = scheduler.rampdll
LINK_INPUT = $(OBJS) scheduler.def


EXTRA_CXXFLAGS = ${LOCAL_INCLUDES}

include ../../infra/common.mk
include ../../infra/makedep.mk

release: $(OBJS) $(OUTPUT)
	@cp $(OUTPUT) $(INSTALL_DIR)

debug: $(OBJS) $(OUTPUT)
	@cp $(OUTPUT) $(INSTALL_DIR)

$(OUTPUT):
	$(CXX) -shared -mno-cygwin -o $(OUTPUT) $(LINK_INPUT) $(MAX_INCLUDES) $(MAX_LIB_INCLUDES) $(LOCAL_INCLUDES) -lJamomaFramework -lMaxAPI -lMaxAudio 
clean:
	rm -f $(OBJS)
	rm -f $(DEPENDS)
	rm -f $(OUTPUT)

