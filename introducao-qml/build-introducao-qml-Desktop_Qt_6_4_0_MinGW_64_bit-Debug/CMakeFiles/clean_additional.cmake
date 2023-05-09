# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\introducao-qml_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\introducao-qml_autogen.dir\\ParseCache.txt"
  "introducao-qml_autogen"
  )
endif()
