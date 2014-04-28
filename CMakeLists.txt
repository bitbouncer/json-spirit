CMAKE_MINIMUM_REQUIRED(VERSION 2.6)

PROJECT(json_spirit)
SUBDIRS(json_spirit json_demo json_headers_only_demo json_map_demo json_test)
INCLUDE_DIRECTORIES(json_spirit)

SET(LIBRARY_OUTPUT_PATH     ${CMAKE_SOURCE_DIR}/lib)
SET(EXECUTABLE_OUTPUT_PATH  ${CMAKE_SOURCE_DIR}/bin)

if(WIN32)
SET(LIBRARY_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/lib/$(Platform))
add_definitions(/MP)
add_definitions(/bigobj)
endif()

INSTALL(
  FILES
  ${CMAKE_SOURCE_DIR}/json_spirit/json_spirit.h
  ${CMAKE_SOURCE_DIR}/json_spirit/json_spirit_error_position.h
  ${CMAKE_SOURCE_DIR}/json_spirit/json_spirit_reader.h
  ${CMAKE_SOURCE_DIR}/json_spirit/json_spirit_reader_template.h
  ${CMAKE_SOURCE_DIR}/json_spirit/json_spirit_stream_reader.h
  ${CMAKE_SOURCE_DIR}/json_spirit/json_spirit_utils.h
  ${CMAKE_SOURCE_DIR}/json_spirit/json_spirit_value.h
  ${CMAKE_SOURCE_DIR}/json_spirit/json_spirit_writer.h
  ${CMAKE_SOURCE_DIR}/json_spirit/json_spirit_writer_template.h
  ${CMAKE_SOURCE_DIR}/json_spirit/json_spirit_writer_options.h
  DESTINATION include)

INSTALL(
  FILES
  ${CMAKE_BINARY_DIR}/json_spirit/libjson_spirit.a
  DESTINATION lib)

INCLUDE(CPack)
