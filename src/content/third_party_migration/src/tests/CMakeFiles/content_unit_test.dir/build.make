# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sebas/Documents/wazuh/wazuh/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sebas/Documents/wazuh/wazuh/src

# Include any dependencies generated for this target.
include content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/compiler_depend.make

# Include the progress variables for this target.
include content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/progress.make

# Include the compile flags for this target's objects.
include content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/flags.make

content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/cveApiFetcher_test.cpp.o: content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/flags.make
content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/cveApiFetcher_test.cpp.o: content/third_party_migration/src/tests/cveApiFetcher_test.cpp
content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/cveApiFetcher_test.cpp.o: content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sebas/Documents/wazuh/wazuh/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/cveApiFetcher_test.cpp.o"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/cveApiFetcher_test.cpp.o -MF CMakeFiles/content_unit_test.dir/cveApiFetcher_test.cpp.o.d -o CMakeFiles/content_unit_test.dir/cveApiFetcher_test.cpp.o -c /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/tests/cveApiFetcher_test.cpp

content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/cveApiFetcher_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/content_unit_test.dir/cveApiFetcher_test.cpp.i"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/tests/cveApiFetcher_test.cpp > CMakeFiles/content_unit_test.dir/cveApiFetcher_test.cpp.i

content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/cveApiFetcher_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/content_unit_test.dir/cveApiFetcher_test.cpp.s"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/tests/cveApiFetcher_test.cpp -o CMakeFiles/content_unit_test.dir/cveApiFetcher_test.cpp.s

content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/main.cpp.o: content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/flags.make
content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/main.cpp.o: content/third_party_migration/src/tests/main.cpp
content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/main.cpp.o: content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sebas/Documents/wazuh/wazuh/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/main.cpp.o"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/main.cpp.o -MF CMakeFiles/content_unit_test.dir/main.cpp.o.d -o CMakeFiles/content_unit_test.dir/main.cpp.o -c /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/tests/main.cpp

content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/content_unit_test.dir/main.cpp.i"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/tests/main.cpp > CMakeFiles/content_unit_test.dir/main.cpp.i

content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/content_unit_test.dir/main.cpp.s"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/tests/main.cpp -o CMakeFiles/content_unit_test.dir/main.cpp.s

content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/__/cveFetchers/cveApiFetcher.cpp.o: content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/flags.make
content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/__/cveFetchers/cveApiFetcher.cpp.o: content/third_party_migration/src/cveFetchers/cveApiFetcher.cpp
content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/__/cveFetchers/cveApiFetcher.cpp.o: content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sebas/Documents/wazuh/wazuh/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/__/cveFetchers/cveApiFetcher.cpp.o"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/__/cveFetchers/cveApiFetcher.cpp.o -MF CMakeFiles/content_unit_test.dir/__/cveFetchers/cveApiFetcher.cpp.o.d -o CMakeFiles/content_unit_test.dir/__/cveFetchers/cveApiFetcher.cpp.o -c /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/cveFetchers/cveApiFetcher.cpp

content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/__/cveFetchers/cveApiFetcher.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/content_unit_test.dir/__/cveFetchers/cveApiFetcher.cpp.i"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/cveFetchers/cveApiFetcher.cpp > CMakeFiles/content_unit_test.dir/__/cveFetchers/cveApiFetcher.cpp.i

content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/__/cveFetchers/cveApiFetcher.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/content_unit_test.dir/__/cveFetchers/cveApiFetcher.cpp.s"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/cveFetchers/cveApiFetcher.cpp -o CMakeFiles/content_unit_test.dir/__/cveFetchers/cveApiFetcher.cpp.s

content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/__/cveFetchers/cveFetchersHelper.cpp.o: content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/flags.make
content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/__/cveFetchers/cveFetchersHelper.cpp.o: content/third_party_migration/src/cveFetchers/cveFetchersHelper.cpp
content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/__/cveFetchers/cveFetchersHelper.cpp.o: content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sebas/Documents/wazuh/wazuh/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/__/cveFetchers/cveFetchersHelper.cpp.o"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/__/cveFetchers/cveFetchersHelper.cpp.o -MF CMakeFiles/content_unit_test.dir/__/cveFetchers/cveFetchersHelper.cpp.o.d -o CMakeFiles/content_unit_test.dir/__/cveFetchers/cveFetchersHelper.cpp.o -c /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/cveFetchers/cveFetchersHelper.cpp

content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/__/cveFetchers/cveFetchersHelper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/content_unit_test.dir/__/cveFetchers/cveFetchersHelper.cpp.i"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/cveFetchers/cveFetchersHelper.cpp > CMakeFiles/content_unit_test.dir/__/cveFetchers/cveFetchersHelper.cpp.i

content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/__/cveFetchers/cveFetchersHelper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/content_unit_test.dir/__/cveFetchers/cveFetchersHelper.cpp.s"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/cveFetchers/cveFetchersHelper.cpp -o CMakeFiles/content_unit_test.dir/__/cveFetchers/cveFetchersHelper.cpp.s

# Object files for target content_unit_test
content_unit_test_OBJECTS = \
"CMakeFiles/content_unit_test.dir/cveApiFetcher_test.cpp.o" \
"CMakeFiles/content_unit_test.dir/main.cpp.o" \
"CMakeFiles/content_unit_test.dir/__/cveFetchers/cveApiFetcher.cpp.o" \
"CMakeFiles/content_unit_test.dir/__/cveFetchers/cveFetchersHelper.cpp.o"

# External object files for target content_unit_test
content_unit_test_EXTERNAL_OBJECTS =

content/third_party_migration/src/tests/content_unit_test: content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/cveApiFetcher_test.cpp.o
content/third_party_migration/src/tests/content_unit_test: content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/main.cpp.o
content/third_party_migration/src/tests/content_unit_test: content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/__/cveFetchers/cveApiFetcher.cpp.o
content/third_party_migration/src/tests/content_unit_test: content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/__/cveFetchers/cveFetchersHelper.cpp.o
content/third_party_migration/src/tests/content_unit_test: content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/build.make
content/third_party_migration/src/tests/content_unit_test: content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sebas/Documents/wazuh/wazuh/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable content_unit_test"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/content_unit_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/build: content/third_party_migration/src/tests/content_unit_test
.PHONY : content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/build

content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/clean:
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/tests && $(CMAKE_COMMAND) -P CMakeFiles/content_unit_test.dir/cmake_clean.cmake
.PHONY : content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/clean

content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/depend:
	cd /home/sebas/Documents/wazuh/wazuh/src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sebas/Documents/wazuh/wazuh/src /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/tests /home/sebas/Documents/wazuh/wazuh/src /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/tests /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : content/third_party_migration/src/tests/CMakeFiles/content_unit_test.dir/depend

