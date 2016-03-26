cmake_minimum_required(VERSION 2.8.1)
cmake_policy(SET CMP0015 NEW)

include_directories(${Boost_INCLUDE_DIRS} ${CMAKE_SOURCE_DIR})

MESSAGE( STATUS "Boost_INCLUDE_DIRS:         " ${Boost_INCLUDE_DIRS} )
MESSAGE( STATUS "Boost_LIBRARY_DIRS:         " ${Boost_LIBRARY_DIRS} )

PROJECT(json_spirit)
SUBDIRS(json_spirit)
#SUBDIRS(json_spirit json_demo json_headers_only_demo json_map_demo json_test)
INCLUDE_DIRECTORIES(json_spirit)

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
  ${CMAKE_BINARY_DIR}/libjson_spirit.a
  DESTINATION lib)

INCLUDE(CPack)
