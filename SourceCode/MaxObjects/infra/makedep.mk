TEMP_DEPENDS = $(SOURCES:.C=.d) $(SOURCES:.c=.d) $(SOURCES:.cpp=.d)
# This ensures that we don't rm -f source files when we do a make clean
DEPENDS = $(filter-out $(SOURCES),$(TEMP_DEPENDS))
# include the header file dependencies for the project
# source file. 
ifeq "${MAKECMDGOALS}" "release"
    include $(DEPENDS)
endif
ifeq "${MAKECMDGOALS}" "debug"
    include $(DEPENDS)
endif
