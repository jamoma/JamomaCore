ifeq ($(GNUSTEP_MAKEFILES),)
 GNUSTEP_MAKEFILES := $(shell gnustep-config --variable=GNUSTEP_MAKEFILES 2>/dev/null)
endif

include $(GNUSTEP_MAKEFILES)/common.make


LIBRARY_NAME = DoctorOpTilde
DoctorOpTilde_OBJC_FILES = main.m TTDCBlock.m
ADDITIONAL_LDFLAGS += tt.dcblock~.def


ADDITIONAL_OBJCFLAGS += -Wall
ADDITIONAL_OBJCFLAGS += -Wno-unknown-pragmas
ADDITIONAL_OBJCFLAGS += -DWIN_VERSION
ADDITIONAL_OBJCFLAGS += -DWIN_EXT_VERSION
ADDITIONAL_OBJCFLAGS += -DTT_TARGET_WIN
ADDITIONAL_OBJCFLAGS += -DTT_TARGET_MAX
ADDITIONAL_OBJCFLAGS += -DTTOBJECT_BASE_CLASS=MaxObject
ADDITIONAL_OBJCFLAGS += -DTTOBJECT_BASE_CLASS_HEADER="<MaxObject/MaxObject.h>"
ADDITIONAL_INCLUDE_DIRS = -I/maxmspsdk/c74support/max-includes -I/maxmspsdk/c74support/msp-includes -I../../includes/units -I../../includes/core
ADDITIONAL_LIB_DIRS = -L/maxmspsdk/c74support/max-includes -L/maxmspsdk/c74support/msp-includes
ADDITIONAL_OBJC_LIBS = -lMaxAPI -lMaxAudio -lMaxObject

include $(GNUSTEP_MAKEFILES)/library.make
