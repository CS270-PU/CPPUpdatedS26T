cmake_minimum_required(VERSION 3.18)
project(CS270Template LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Debug-friendly defaults
if (NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Debug)
endif()
add_compile_options(-Wall -Wextra -g -O0 -fno-omit-frame-pointer)

# Standard CTest option: BUILD_TESTING (ON by default)
include(CTest)

# ---- Core library (everything except main.cpp) ----
file(GLOB CORE_SOURCES CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp")
list(REMOVE_ITEM CORE_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp")

add_library(core ${CORE_SOURCES})
target_include_directories(core PUBLIC include)

# ---- Main program ----
add_executable(main src/main.cpp)
target_link_libraries(main PRIVATE core)

# ---- Unit tests ----
if (BUILD_TESTING)
  include(FetchContent)

  FetchContent_Declare(
    googletest
    URL https://github.com/google/googletest/archive/refs/tags/v1.15.2.zip
  )
  set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
  FetchContent_MakeAvailable(googletest)

  file(GLOB TEST_FILES CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/test/*.cpp")
  add_executable(tests ${TEST_FILES})
  target_link_libraries(tests PRIVATE core GTest::gtest_main)

  # Make CTest ALWAYS see at least one test
  add_test(NAME tests COMMAND tests)
endif()
