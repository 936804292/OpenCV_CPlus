cmake_minimum_required(VERSION 3.5.1)

# Enable C++11
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

# Define project name
project(DisplayImage)

# Find OpenCV, you may need to set OpenCV_DIR variable
# to the absolute path to the directory containing OpenCVConfig.cmake file
# via the command line or GUI
find_package(OpenCV REQUIRED)  
include_directories( ${OpenCV_INCLUDE_DIRS} )  
# Declare the executable target built from your sources
add_executable(DisplayImage DisplayImage.cpp)

# Link your application with OpenCV libraries
target_link_libraries(DisplayImage ${OpenCV_LIBS})
