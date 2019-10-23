cmake_minimum_required(VERSION 2.8)
project(joinMap)

# Enable C++11
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

find_package(OpenCV REQUIRED)
include_directories( ${OpenCV_INCLUDE_DIRS} )

SET(CMAKE_BUILD_TYPE "Debug")

find_package(Sophus REQUIRED)
include_directories(${Sophus_INCLUDE_DIRS})


find_package(Pangolin REQUIRED)
include_directories(${Pangolin_INCLUDE_DIRS})


find_package(PCL 1.2 REQUIRED)
#SET(CMAKE_CXX_FLAGS "-std=c++0x")
include_directories(${PCL_INCLUDE_DIRS})
link_directories(${PCL_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONS})

add_executable(joinMap joinMap.cpp)

target_link_libraries (joinMap ${PCL_LIBRARIES})
target_link_libraries(joinMap ${OpenCV_LIBS})
target_link_libraries(joinMap ${Pangolin_LIBRARIES})

install(TARGETS joinMap RUNTIME DESTINATION bin)
