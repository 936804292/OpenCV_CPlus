# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/caps/code/test/pcl_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/caps/code/test/pcl_test

# Include any dependencies generated for this target.
include CMakeFiles/pcl_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pcl_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pcl_test.dir/flags.make

CMakeFiles/pcl_test.dir/pcl_test.cpp.o: CMakeFiles/pcl_test.dir/flags.make
CMakeFiles/pcl_test.dir/pcl_test.cpp.o: pcl_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/caps/code/test/pcl_test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pcl_test.dir/pcl_test.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pcl_test.dir/pcl_test.cpp.o -c /home/caps/code/test/pcl_test/pcl_test.cpp

CMakeFiles/pcl_test.dir/pcl_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pcl_test.dir/pcl_test.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/caps/code/test/pcl_test/pcl_test.cpp > CMakeFiles/pcl_test.dir/pcl_test.cpp.i

CMakeFiles/pcl_test.dir/pcl_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pcl_test.dir/pcl_test.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/caps/code/test/pcl_test/pcl_test.cpp -o CMakeFiles/pcl_test.dir/pcl_test.cpp.s

CMakeFiles/pcl_test.dir/pcl_test.cpp.o.requires:

.PHONY : CMakeFiles/pcl_test.dir/pcl_test.cpp.o.requires

CMakeFiles/pcl_test.dir/pcl_test.cpp.o.provides: CMakeFiles/pcl_test.dir/pcl_test.cpp.o.requires
	$(MAKE) -f CMakeFiles/pcl_test.dir/build.make CMakeFiles/pcl_test.dir/pcl_test.cpp.o.provides.build
.PHONY : CMakeFiles/pcl_test.dir/pcl_test.cpp.o.provides

CMakeFiles/pcl_test.dir/pcl_test.cpp.o.provides.build: CMakeFiles/pcl_test.dir/pcl_test.cpp.o


# Object files for target pcl_test
pcl_test_OBJECTS = \
"CMakeFiles/pcl_test.dir/pcl_test.cpp.o"

# External object files for target pcl_test
pcl_test_EXTERNAL_OBJECTS =

pcl_test: CMakeFiles/pcl_test.dir/pcl_test.cpp.o
pcl_test: CMakeFiles/pcl_test.dir/build.make
pcl_test: /usr/local/lib/libpcl_segmentation.so
pcl_test: /usr/local/lib/libpcl_surface.so
pcl_test: /usr/local/lib/libpcl_recognition.so
pcl_test: /usr/local/lib/libpcl_keypoints.so
pcl_test: /usr/local/lib/libpcl_stereo.so
pcl_test: /usr/local/lib/libpcl_tracking.so
pcl_test: /usr/lib/x86_64-linux-gnu/libboost_system.so
pcl_test: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
pcl_test: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
pcl_test: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
pcl_test: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
pcl_test: /usr/lib/x86_64-linux-gnu/libboost_regex.so
pcl_test: /usr/lib/x86_64-linux-gnu/libqhull.so
pcl_test: /usr/lib/libOpenNI.so
pcl_test: /usr/lib/x86_64-linux-gnu/libflann_cpp.so
pcl_test: /usr/local/lib/libpcl_ml.so
pcl_test: /usr/local/lib/libpcl_registration.so
pcl_test: /usr/local/lib/libpcl_features.so
pcl_test: /usr/lib/libvtkGenericFiltering.so.5.10.1
pcl_test: /usr/lib/libvtkGeovis.so.5.10.1
pcl_test: /usr/lib/libvtkCharts.so.5.10.1
pcl_test: /usr/lib/libvtkViews.so.5.10.1
pcl_test: /usr/lib/libvtkInfovis.so.5.10.1
pcl_test: /usr/lib/libvtkWidgets.so.5.10.1
pcl_test: /usr/lib/libvtkVolumeRendering.so.5.10.1
pcl_test: /usr/lib/libvtkHybrid.so.5.10.1
pcl_test: /usr/lib/libvtkParallel.so.5.10.1
pcl_test: /usr/lib/libvtkRendering.so.5.10.1
pcl_test: /usr/lib/libvtkImaging.so.5.10.1
pcl_test: /usr/lib/libvtkGraphics.so.5.10.1
pcl_test: /usr/lib/libvtkIO.so.5.10.1
pcl_test: /usr/lib/libvtkFiltering.so.5.10.1
pcl_test: /usr/lib/libvtkCommon.so.5.10.1
pcl_test: /usr/lib/libvtksys.so.5.10.1
pcl_test: /usr/local/lib/libpcl_io.so
pcl_test: /usr/local/lib/libpcl_filters.so
pcl_test: /usr/local/lib/libpcl_sample_consensus.so
pcl_test: /usr/local/lib/libpcl_search.so
pcl_test: /usr/local/lib/libpcl_octree.so
pcl_test: /usr/local/lib/libpcl_kdtree.so
pcl_test: /usr/local/lib/libpcl_common.so
pcl_test: CMakeFiles/pcl_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/caps/code/test/pcl_test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pcl_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pcl_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pcl_test.dir/build: pcl_test

.PHONY : CMakeFiles/pcl_test.dir/build

CMakeFiles/pcl_test.dir/requires: CMakeFiles/pcl_test.dir/pcl_test.cpp.o.requires

.PHONY : CMakeFiles/pcl_test.dir/requires

CMakeFiles/pcl_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pcl_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pcl_test.dir/clean

CMakeFiles/pcl_test.dir/depend:
	cd /home/caps/code/test/pcl_test && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/caps/code/test/pcl_test /home/caps/code/test/pcl_test /home/caps/code/test/pcl_test /home/caps/code/test/pcl_test /home/caps/code/test/pcl_test/CMakeFiles/pcl_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pcl_test.dir/depend
