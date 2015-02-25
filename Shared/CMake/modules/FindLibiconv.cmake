# - Find LIBICONV include.

FIND_PATH(LIBICONV_INCLUDE_DIR  iconv.h
	PATHS
	"${CMAKE_CURRENT_LIST_DIR}//..//..//..//Foundation//library//libiconv2//include"
)

# handle the QUIETLY and REQUIRED arguments and set LIBICONV_FOUND to TRUE if 
# all listed variables are TRUE
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(LIBICONV DEFAULT_MSG LIBICONV_INCLUDE_DIR)

