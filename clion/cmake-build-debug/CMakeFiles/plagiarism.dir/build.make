# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /snap/clion/100/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/100/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/plagiarism.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/plagiarism.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/plagiarism.dir/flags.make

CMakeFiles/plagiarism.dir/src/main.cpp.o: CMakeFiles/plagiarism.dir/flags.make
CMakeFiles/plagiarism.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/plagiarism.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/plagiarism.dir/src/main.cpp.o -c /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/src/main.cpp

CMakeFiles/plagiarism.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/plagiarism.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/src/main.cpp > CMakeFiles/plagiarism.dir/src/main.cpp.i

CMakeFiles/plagiarism.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/plagiarism.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/src/main.cpp -o CMakeFiles/plagiarism.dir/src/main.cpp.s

CMakeFiles/plagiarism.dir/src/Compare.cpp.o: CMakeFiles/plagiarism.dir/flags.make
CMakeFiles/plagiarism.dir/src/Compare.cpp.o: ../src/Compare.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/plagiarism.dir/src/Compare.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/plagiarism.dir/src/Compare.cpp.o -c /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/src/Compare.cpp

CMakeFiles/plagiarism.dir/src/Compare.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/plagiarism.dir/src/Compare.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/src/Compare.cpp > CMakeFiles/plagiarism.dir/src/Compare.cpp.i

CMakeFiles/plagiarism.dir/src/Compare.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/plagiarism.dir/src/Compare.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/src/Compare.cpp -o CMakeFiles/plagiarism.dir/src/Compare.cpp.s

# Object files for target plagiarism
plagiarism_OBJECTS = \
"CMakeFiles/plagiarism.dir/src/main.cpp.o" \
"CMakeFiles/plagiarism.dir/src/Compare.cpp.o"

# External object files for target plagiarism
plagiarism_EXTERNAL_OBJECTS =

plagiarism: CMakeFiles/plagiarism.dir/src/main.cpp.o
plagiarism: CMakeFiles/plagiarism.dir/src/Compare.cpp.o
plagiarism: CMakeFiles/plagiarism.dir/build.make
plagiarism: libplagiarism_lib.a
plagiarism: CMakeFiles/plagiarism.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable plagiarism"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/plagiarism.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/plagiarism.dir/build: plagiarism

.PHONY : CMakeFiles/plagiarism.dir/build

CMakeFiles/plagiarism.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/plagiarism.dir/cmake_clean.cmake
.PHONY : CMakeFiles/plagiarism.dir/clean

CMakeFiles/plagiarism.dir/depend:
	cd /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/cmake-build-debug /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/cmake-build-debug /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/cmake-build-debug/CMakeFiles/plagiarism.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/plagiarism.dir/depend

