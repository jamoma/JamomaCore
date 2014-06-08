# CppCheck
add_custom_target(cppcheck cppcheck --enable=all --quiet --std=c++11 2>cppcheck_results.txt ${PROJECT_SOURCE_DIR})

# Testing
include(CTest)
if (CMAKE_CONFIGURATION_TYPES)
    add_custom_target(check COMMAND ${CMAKE_CTEST_COMMAND}
        --force-new-ctest-process --output-on-failure
        --build-config "$<CONFIGURATION>")
else()
    add_custom_target(check COMMAND ${CMAKE_CTEST_COMMAND}
        --force-new-ctest-process --output-on-failure)
endif()

# Code coverage
if(CODE_COVERAGE)
	INCLUDE(CodeCoverage)

	SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${CMAKE_C_FLAGS_COVERAGE}")
	SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${CMAKE_CXX_FLAGS_COVERAGE}")

	# Dirty hack to allow coverage test even if a test fails.
	SETUP_TARGET_FOR_COVERAGE(code_coverage sh coverageOutput "-c;'make;check\;true'")
endif()

