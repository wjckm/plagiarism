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
include CMakeFiles/plagiarism_lib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/plagiarism_lib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/plagiarism_lib.dir/flags.make

CMakeFiles/plagiarism_lib.dir/src/Compare.cpp.o: CMakeFiles/plagiarism_lib.dir/flags.make
CMakeFiles/plagiarism_lib.dir/src/Compare.cpp.o: ../src/Compare.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/plagiarism_lib.dir/src/Compare.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/plagiarism_lib.dir/src/Compare.cpp.o -c /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/src/Compare.cpp

CMakeFiles/plagiarism_lib.dir/src/Compare.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/plagiarism_lib.dir/src/Compare.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/src/Compare.cpp > CMakeFiles/plagiarism_lib.dir/src/Compare.cpp.i

CMakeFiles/plagiarism_lib.dir/src/Compare.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/plagiarism_lib.dir/src/Compare.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/src/Compare.cpp -o CMakeFiles/plagiarism_lib.dir/src/Compare.cpp.s

CMakeFiles/plagiarism_lib.dir/src/simpleCompare.cpp.o: CMakeFiles/plagiarism_lib.dir/flags.make
CMakeFiles/plagiarism_lib.dir/src/simpleCompare.cpp.o: ../src/simpleCompare.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/plagiarism_lib.dir/src/simpleCompare.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/plagiarism_lib.dir/src/simpleCompare.cpp.o -c /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/src/simpleCompare.cpp

CMakeFiles/plagiarism_lib.dir/src/simpleCompare.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/plagiarism_lib.dir/src/simpleCompare.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/src/simpleCompare.cpp > CMakeFiles/plagiarism_lib.dir/src/simpleCompare.cpp.i

CMakeFiles/plagiarism_lib.dir/src/simpleCompare.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/plagiarism_lib.dir/src/simpleCompare.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/src/simpleCompare.cpp -o CMakeFiles/plagiarism_lib.dir/src/simpleCompare.cpp.s

CMakeFiles/plagiarism_lib.dir/src/removeDuplicates.cpp.o: CMakeFiles/plagiarism_lib.dir/flags.make
CMakeFiles/plagiarism_lib.dir/src/removeDuplicates.cpp.o: ../src/removeDuplicates.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/plagiarism_lib.dir/src/removeDuplicates.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/plagiarism_lib.dir/src/removeDuplicates.cpp.o -c /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/src/removeDuplicates.cpp

CMakeFiles/plagiarism_lib.dir/src/removeDuplicates.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/plagiarism_lib.dir/src/removeDuplicates.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/src/removeDuplicates.cpp > CMakeFiles/plagiarism_lib.dir/src/removeDuplicates.cpp.i

CMakeFiles/plagiarism_lib.dir/src/removeDuplicates.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/plagiarism_lib.dir/src/removeDuplicates.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/src/removeDuplicates.cpp -o CMakeFiles/plagiarism_lib.dir/src/removeDuplicates.cpp.s

CMakeFiles/plagiarism_lib.dir/src/basicLexicalAnalyzer.cpp.o: CMakeFiles/plagiarism_lib.dir/flags.make
CMakeFiles/plagiarism_lib.dir/src/basicLexicalAnalyzer.cpp.o: ../src/basicLexicalAnalyzer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/plagiarism_lib.dir/src/basicLexicalAnalyzer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/plagiarism_lib.dir/src/basicLexicalAnalyzer.cpp.o -c /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/src/basicLexicalAnalyzer.cpp

CMakeFiles/plagiarism_lib.dir/src/basicLexicalAnalyzer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/plagiarism_lib.dir/src/basicLexicalAnalyzer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/src/basicLexicalAnalyzer.cpp > CMakeFiles/plagiarism_lib.dir/src/basicLexicalAnalyzer.cpp.i

CMakeFiles/plagiarism_lib.dir/src/basicLexicalAnalyzer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/plagiarism_lib.dir/src/basicLexicalAnalyzer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/src/basicLexicalAnalyzer.cpp -o CMakeFiles/plagiarism_lib.dir/src/basicLexicalAnalyzer.cpp.s

CMakeFiles/plagiarism_lib.dir/src/lexicalAnalyzer.cpp.o: CMakeFiles/plagiarism_lib.dir/flags.make
CMakeFiles/plagiarism_lib.dir/src/lexicalAnalyzer.cpp.o: ../src/lexicalAnalyzer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/plagiarism_lib.dir/src/lexicalAnalyzer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/plagiarism_lib.dir/src/lexicalAnalyzer.cpp.o -c /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/src/lexicalAnalyzer.cpp

CMakeFiles/plagiarism_lib.dir/src/lexicalAnalyzer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/plagiarism_lib.dir/src/lexicalAnalyzer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/src/lexicalAnalyzer.cpp > CMakeFiles/plagiarism_lib.dir/src/lexicalAnalyzer.cpp.i

CMakeFiles/plagiarism_lib.dir/src/lexicalAnalyzer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/plagiarism_lib.dir/src/lexicalAnalyzer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/src/lexicalAnalyzer.cpp -o CMakeFiles/plagiarism_lib.dir/src/lexicalAnalyzer.cpp.s

# Object files for target plagiarism_lib
plagiarism_lib_OBJECTS = \
"CMakeFiles/plagiarism_lib.dir/src/Compare.cpp.o" \
"CMakeFiles/plagiarism_lib.dir/src/simpleCompare.cpp.o" \
"CMakeFiles/plagiarism_lib.dir/src/removeDuplicates.cpp.o" \
"CMakeFiles/plagiarism_lib.dir/src/basicLexicalAnalyzer.cpp.o" \
"CMakeFiles/plagiarism_lib.dir/src/lexicalAnalyzer.cpp.o"

# External object files for target plagiarism_lib
plagiarism_lib_EXTERNAL_OBJECTS =

libplagiarism_lib.a: CMakeFiles/plagiarism_lib.dir/src/Compare.cpp.o
libplagiarism_lib.a: CMakeFiles/plagiarism_lib.dir/src/simpleCompare.cpp.o
libplagiarism_lib.a: CMakeFiles/plagiarism_lib.dir/src/removeDuplicates.cpp.o
libplagiarism_lib.a: CMakeFiles/plagiarism_lib.dir/src/basicLexicalAnalyzer.cpp.o
libplagiarism_lib.a: CMakeFiles/plagiarism_lib.dir/src/lexicalAnalyzer.cpp.o
libplagiarism_lib.a: CMakeFiles/plagiarism_lib.dir/build.make
libplagiarism_lib.a: CMakeFiles/plagiarism_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX static library libplagiarism_lib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/plagiarism_lib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/plagiarism_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/plagiarism_lib.dir/build: libplagiarism_lib.a

.PHONY : CMakeFiles/plagiarism_lib.dir/build

CMakeFiles/plagiarism_lib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/plagiarism_lib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/plagiarism_lib.dir/clean

CMakeFiles/plagiarism_lib.dir/depend:
	cd /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/cmake-build-debug /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/cmake-build-debug /home/khamza/repos/oop_2019_aplikacja_do_wykrywania_plagiatow_w_kodzie_zrodlowym/clion/cmake-build-debug/CMakeFiles/plagiarism_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/plagiarism_lib.dir/depend

