cmake_minimum_required(VERSION 2.8)
project(stereo)

# Enable C++11
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

find_package(OpenCV REQUIRED)
include_directories( ${OpenCV_INCLUDE_DIRS} )

#SET(CMAKE_BUILD_TYPE "Debug/Release”)
#or
SET(CMAKE_BUILD_TYPE "Debug")
#
#set (Pangolin_DIR "/usr/local/include/pangolin")
#find_package(Pangolin REQUIRED)
##include_directories("/usr/include/pango-1.0/pango")
##set (Pangolin_DIR "/usr/local/include/pangolin")
##target_link_libraries(stereo ${Pangolin_LIBRARIES})

find_package(Pangolin REQUIRED)
include_directories(${Pangolin_INCLUDE_DIRS})


find_package(PCL 1.2 REQUIRED)
#SET(CMAKE_CXX_FLAGS "-std=c++0x")
include_directories(${PCL_INCLUDE_DIRS})
link_directories(${PCL_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONS})

add_executable(stereo stereo.cpp)

target_link_libraries (stereo ${PCL_LIBRARIES})
target_link_libraries(stereo ${OpenCV_LIBS})
target_link_libraries(stereo ${Pangolin_LIBRARIES})

install(TARGETS stereo RUNTIME DESTINATION bin)
