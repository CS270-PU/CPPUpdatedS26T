# CMakeLists.txt for test directory

cmake_minimum_required(VERSION 3.5)

set(This TestsToRun)

# Add unit test .cpp files which are in directory test
set(Sources
    SampleClassTests.cpp
)

add_executable(${This} ${Sources})

# Name SampleClass name comes from the name set(This SampleClass) 
# in the root CMakeLists.txt. Nothing else to add here even if you add
# additional classes for testing.
target_link_libraries(${This} PUBLIC
    gtest_main
    SampleClass
)

add_test(
    NAME ${This}
    COMMAND ${This} 
)