cmake_minimum_required(VERSION 3.8)
project(hello)

#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -lm -O3" )
#set(THREADS_PREFER_PTHREAD_FLAG ON)
LINK_LIBRARIES(m)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
#find_package(Threads REQUIRED)

#aux_source_directory(. SRC_LIST)
file(GLOB_RECURSE SRC_LIST "src/*.c" "src/*.h")
add_executable(hello ${SRC_LIST})
#add_executable(hello src/main.c src/read.c)

#target_link_libraries(cpu_test PUBLIC Threads::Threads)