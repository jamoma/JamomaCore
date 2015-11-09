cmake_minimum_required(VERSION 3.0)

set(JAMOMA_CURRENT_LIBRARY_NAME "Modular")

set(JAMOMA_MODULAR_BUILD_DEMOAPP OFF CACHE BOOL "Build a demo application using Modular feature")

add_subdirectory(library)
add_subdirectory(extensions)

if (JAMOMA_MODULAR_BUILD_DEMOAPP)
  add_subdirectory(implementations/Example/DemoApp)
endif()
