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
include content/third_party_migration/CMakeFiles/content_migration.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include content/third_party_migration/CMakeFiles/content_migration.dir/compiler_depend.make

# Include the progress variables for this target.
include content/third_party_migration/CMakeFiles/content_migration.dir/progress.make

# Include the compile flags for this target's objects.
include content/third_party_migration/CMakeFiles/content_migration.dir/flags.make

content/third_party_migration/CMakeFiles/content_migration.dir/src/NVD/normalizerNVD.cpp.o: content/third_party_migration/CMakeFiles/content_migration.dir/flags.make
content/third_party_migration/CMakeFiles/content_migration.dir/src/NVD/normalizerNVD.cpp.o: content/third_party_migration/src/NVD/normalizerNVD.cpp
content/third_party_migration/CMakeFiles/content_migration.dir/src/NVD/normalizerNVD.cpp.o: content/third_party_migration/CMakeFiles/content_migration.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sebas/Documents/wazuh/wazuh/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object content/third_party_migration/CMakeFiles/content_migration.dir/src/NVD/normalizerNVD.cpp.o"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT content/third_party_migration/CMakeFiles/content_migration.dir/src/NVD/normalizerNVD.cpp.o -MF CMakeFiles/content_migration.dir/src/NVD/normalizerNVD.cpp.o.d -o CMakeFiles/content_migration.dir/src/NVD/normalizerNVD.cpp.o -c /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/NVD/normalizerNVD.cpp

content/third_party_migration/CMakeFiles/content_migration.dir/src/NVD/normalizerNVD.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/content_migration.dir/src/NVD/normalizerNVD.cpp.i"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/NVD/normalizerNVD.cpp > CMakeFiles/content_migration.dir/src/NVD/normalizerNVD.cpp.i

content/third_party_migration/CMakeFiles/content_migration.dir/src/NVD/normalizerNVD.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/content_migration.dir/src/NVD/normalizerNVD.cpp.s"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/NVD/normalizerNVD.cpp -o CMakeFiles/content_migration.dir/src/NVD/normalizerNVD.cpp.s

content/third_party_migration/CMakeFiles/content_migration.dir/src/diffEngine.cpp.o: content/third_party_migration/CMakeFiles/content_migration.dir/flags.make
content/third_party_migration/CMakeFiles/content_migration.dir/src/diffEngine.cpp.o: content/third_party_migration/src/diffEngine.cpp
content/third_party_migration/CMakeFiles/content_migration.dir/src/diffEngine.cpp.o: content/third_party_migration/CMakeFiles/content_migration.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sebas/Documents/wazuh/wazuh/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object content/third_party_migration/CMakeFiles/content_migration.dir/src/diffEngine.cpp.o"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT content/third_party_migration/CMakeFiles/content_migration.dir/src/diffEngine.cpp.o -MF CMakeFiles/content_migration.dir/src/diffEngine.cpp.o.d -o CMakeFiles/content_migration.dir/src/diffEngine.cpp.o -c /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/diffEngine.cpp

content/third_party_migration/CMakeFiles/content_migration.dir/src/diffEngine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/content_migration.dir/src/diffEngine.cpp.i"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/diffEngine.cpp > CMakeFiles/content_migration.dir/src/diffEngine.cpp.i

content/third_party_migration/CMakeFiles/content_migration.dir/src/diffEngine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/content_migration.dir/src/diffEngine.cpp.s"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/diffEngine.cpp -o CMakeFiles/content_migration.dir/src/diffEngine.cpp.s

content/third_party_migration/CMakeFiles/content_migration.dir/src/jsonParser.cpp.o: content/third_party_migration/CMakeFiles/content_migration.dir/flags.make
content/third_party_migration/CMakeFiles/content_migration.dir/src/jsonParser.cpp.o: content/third_party_migration/src/jsonParser.cpp
content/third_party_migration/CMakeFiles/content_migration.dir/src/jsonParser.cpp.o: content/third_party_migration/CMakeFiles/content_migration.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sebas/Documents/wazuh/wazuh/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object content/third_party_migration/CMakeFiles/content_migration.dir/src/jsonParser.cpp.o"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT content/third_party_migration/CMakeFiles/content_migration.dir/src/jsonParser.cpp.o -MF CMakeFiles/content_migration.dir/src/jsonParser.cpp.o.d -o CMakeFiles/content_migration.dir/src/jsonParser.cpp.o -c /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/jsonParser.cpp

content/third_party_migration/CMakeFiles/content_migration.dir/src/jsonParser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/content_migration.dir/src/jsonParser.cpp.i"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/jsonParser.cpp > CMakeFiles/content_migration.dir/src/jsonParser.cpp.i

content/third_party_migration/CMakeFiles/content_migration.dir/src/jsonParser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/content_migration.dir/src/jsonParser.cpp.s"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/jsonParser.cpp -o CMakeFiles/content_migration.dir/src/jsonParser.cpp.s

content/third_party_migration/CMakeFiles/content_migration.dir/src/main.cpp.o: content/third_party_migration/CMakeFiles/content_migration.dir/flags.make
content/third_party_migration/CMakeFiles/content_migration.dir/src/main.cpp.o: content/third_party_migration/src/main.cpp
content/third_party_migration/CMakeFiles/content_migration.dir/src/main.cpp.o: content/third_party_migration/CMakeFiles/content_migration.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sebas/Documents/wazuh/wazuh/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object content/third_party_migration/CMakeFiles/content_migration.dir/src/main.cpp.o"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT content/third_party_migration/CMakeFiles/content_migration.dir/src/main.cpp.o -MF CMakeFiles/content_migration.dir/src/main.cpp.o.d -o CMakeFiles/content_migration.dir/src/main.cpp.o -c /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/main.cpp

content/third_party_migration/CMakeFiles/content_migration.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/content_migration.dir/src/main.cpp.i"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/main.cpp > CMakeFiles/content_migration.dir/src/main.cpp.i

content/third_party_migration/CMakeFiles/content_migration.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/content_migration.dir/src/main.cpp.s"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/main.cpp -o CMakeFiles/content_migration.dir/src/main.cpp.s

content/third_party_migration/CMakeFiles/content_migration.dir/src/orchestrator.cpp.o: content/third_party_migration/CMakeFiles/content_migration.dir/flags.make
content/third_party_migration/CMakeFiles/content_migration.dir/src/orchestrator.cpp.o: content/third_party_migration/src/orchestrator.cpp
content/third_party_migration/CMakeFiles/content_migration.dir/src/orchestrator.cpp.o: content/third_party_migration/CMakeFiles/content_migration.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sebas/Documents/wazuh/wazuh/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object content/third_party_migration/CMakeFiles/content_migration.dir/src/orchestrator.cpp.o"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT content/third_party_migration/CMakeFiles/content_migration.dir/src/orchestrator.cpp.o -MF CMakeFiles/content_migration.dir/src/orchestrator.cpp.o.d -o CMakeFiles/content_migration.dir/src/orchestrator.cpp.o -c /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/orchestrator.cpp

content/third_party_migration/CMakeFiles/content_migration.dir/src/orchestrator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/content_migration.dir/src/orchestrator.cpp.i"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/orchestrator.cpp > CMakeFiles/content_migration.dir/src/orchestrator.cpp.i

content/third_party_migration/CMakeFiles/content_migration.dir/src/orchestrator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/content_migration.dir/src/orchestrator.cpp.s"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/src/orchestrator.cpp -o CMakeFiles/content_migration.dir/src/orchestrator.cpp.s

# Object files for target content_migration
content_migration_OBJECTS = \
"CMakeFiles/content_migration.dir/src/NVD/normalizerNVD.cpp.o" \
"CMakeFiles/content_migration.dir/src/diffEngine.cpp.o" \
"CMakeFiles/content_migration.dir/src/jsonParser.cpp.o" \
"CMakeFiles/content_migration.dir/src/main.cpp.o" \
"CMakeFiles/content_migration.dir/src/orchestrator.cpp.o"

# External object files for target content_migration
content_migration_EXTERNAL_OBJECTS =

content/third_party_migration/content_migration: content/third_party_migration/CMakeFiles/content_migration.dir/src/NVD/normalizerNVD.cpp.o
content/third_party_migration/content_migration: content/third_party_migration/CMakeFiles/content_migration.dir/src/diffEngine.cpp.o
content/third_party_migration/content_migration: content/third_party_migration/CMakeFiles/content_migration.dir/src/jsonParser.cpp.o
content/third_party_migration/content_migration: content/third_party_migration/CMakeFiles/content_migration.dir/src/main.cpp.o
content/third_party_migration/content_migration: content/third_party_migration/CMakeFiles/content_migration.dir/src/orchestrator.cpp.o
content/third_party_migration/content_migration: content/third_party_migration/CMakeFiles/content_migration.dir/build.make
content/third_party_migration/content_migration: content/third_party_migration/CMakeFiles/content_migration.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sebas/Documents/wazuh/wazuh/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable content_migration"
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/content_migration.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
content/third_party_migration/CMakeFiles/content_migration.dir/build: content/third_party_migration/content_migration
.PHONY : content/third_party_migration/CMakeFiles/content_migration.dir/build

content/third_party_migration/CMakeFiles/content_migration.dir/clean:
	cd /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration && $(CMAKE_COMMAND) -P CMakeFiles/content_migration.dir/cmake_clean.cmake
.PHONY : content/third_party_migration/CMakeFiles/content_migration.dir/clean

content/third_party_migration/CMakeFiles/content_migration.dir/depend:
	cd /home/sebas/Documents/wazuh/wazuh/src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sebas/Documents/wazuh/wazuh/src /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration /home/sebas/Documents/wazuh/wazuh/src /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration /home/sebas/Documents/wazuh/wazuh/src/content/third_party_migration/CMakeFiles/content_migration.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : content/third_party_migration/CMakeFiles/content_migration.dir/depend

