# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 4.0

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\ccg\beyond\cmake-sample

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\ccg\beyond\cmake-sample\build

# Include any dependencies generated for this target.
include src/CMakeFiles/MyApp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/MyApp.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/MyApp.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/MyApp.dir/flags.make

src/CMakeFiles/MyApp.dir/codegen:
.PHONY : src/CMakeFiles/MyApp.dir/codegen

src/CMakeFiles/MyApp.dir/main.cpp.obj: src/CMakeFiles/MyApp.dir/flags.make
src/CMakeFiles/MyApp.dir/main.cpp.obj: src/CMakeFiles/MyApp.dir/includes_CXX.rsp
src/CMakeFiles/MyApp.dir/main.cpp.obj: C:/ccg/beyond/cmake-sample/src/main.cpp
src/CMakeFiles/MyApp.dir/main.cpp.obj: src/CMakeFiles/MyApp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\ccg\beyond\cmake-sample\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/MyApp.dir/main.cpp.obj"
	cd /d C:\ccg\beyond\cmake-sample\build\src && C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/MyApp.dir/main.cpp.obj -MF CMakeFiles\MyApp.dir\main.cpp.obj.d -o CMakeFiles\MyApp.dir\main.cpp.obj -c C:\ccg\beyond\cmake-sample\src\main.cpp

src/CMakeFiles/MyApp.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MyApp.dir/main.cpp.i"
	cd /d C:\ccg\beyond\cmake-sample\build\src && C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\ccg\beyond\cmake-sample\src\main.cpp > CMakeFiles\MyApp.dir\main.cpp.i

src/CMakeFiles/MyApp.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MyApp.dir/main.cpp.s"
	cd /d C:\ccg\beyond\cmake-sample\build\src && C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\ccg\beyond\cmake-sample\src\main.cpp -o CMakeFiles\MyApp.dir\main.cpp.s

# Object files for target MyApp
MyApp_OBJECTS = \
"CMakeFiles/MyApp.dir/main.cpp.obj"

# External object files for target MyApp
MyApp_EXTERNAL_OBJECTS =

src/MyApp.exe: src/CMakeFiles/MyApp.dir/main.cpp.obj
src/MyApp.exe: src/CMakeFiles/MyApp.dir/build.make
src/MyApp.exe: src/libMyLib.a
src/MyApp.exe: src/CMakeFiles/MyApp.dir/linkLibs.rsp
src/MyApp.exe: src/CMakeFiles/MyApp.dir/objects1.rsp
src/MyApp.exe: src/CMakeFiles/MyApp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\ccg\beyond\cmake-sample\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable MyApp.exe"
	cd /d C:\ccg\beyond\cmake-sample\build\src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\MyApp.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/MyApp.dir/build: src/MyApp.exe
.PHONY : src/CMakeFiles/MyApp.dir/build

src/CMakeFiles/MyApp.dir/clean:
	cd /d C:\ccg\beyond\cmake-sample\build\src && $(CMAKE_COMMAND) -P CMakeFiles\MyApp.dir\cmake_clean.cmake
.PHONY : src/CMakeFiles/MyApp.dir/clean

src/CMakeFiles/MyApp.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\ccg\beyond\cmake-sample C:\ccg\beyond\cmake-sample\src C:\ccg\beyond\cmake-sample\build C:\ccg\beyond\cmake-sample\build\src C:\ccg\beyond\cmake-sample\build\src\CMakeFiles\MyApp.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/CMakeFiles/MyApp.dir/depend

