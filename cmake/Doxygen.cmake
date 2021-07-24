find_package(Doxygen)

if (DOXYGEN_FOUND)
  message(STATUS "Found: doxygen, add target 'documentation'")
  file(MAKE_DIRECTORY ${PROJECT_BINARY_DIR}/documentation)

  add_custom_target(documentation
                    ${DOXYGEN_EXECUTABLE} ${CMAKE_SOURCE_DIR}/Doxyfile &> doxygen.log
                    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/documentation)
endif()