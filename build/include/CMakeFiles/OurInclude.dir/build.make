# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/build"

# Include any dependencies generated for this target.
include include/CMakeFiles/OurInclude.dir/depend.make

# Include the progress variables for this target.
include include/CMakeFiles/OurInclude.dir/progress.make

# Include the compile flags for this target's objects.
include include/CMakeFiles/OurInclude.dir/flags.make

include/CMakeFiles/OurInclude.dir/Aux.cc.o: include/CMakeFiles/OurInclude.dir/flags.make
include/CMakeFiles/OurInclude.dir/Aux.cc.o: ../include/Aux.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object include/CMakeFiles/OurInclude.dir/Aux.cc.o"
	cd "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/build/include" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OurInclude.dir/Aux.cc.o -c "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/include/Aux.cc"

include/CMakeFiles/OurInclude.dir/Aux.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OurInclude.dir/Aux.cc.i"
	cd "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/build/include" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/include/Aux.cc" > CMakeFiles/OurInclude.dir/Aux.cc.i

include/CMakeFiles/OurInclude.dir/Aux.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OurInclude.dir/Aux.cc.s"
	cd "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/build/include" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/include/Aux.cc" -o CMakeFiles/OurInclude.dir/Aux.cc.s

include/CMakeFiles/OurInclude.dir/NewtonRaphson.cc.o: include/CMakeFiles/OurInclude.dir/flags.make
include/CMakeFiles/OurInclude.dir/NewtonRaphson.cc.o: ../include/NewtonRaphson.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object include/CMakeFiles/OurInclude.dir/NewtonRaphson.cc.o"
	cd "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/build/include" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OurInclude.dir/NewtonRaphson.cc.o -c "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/include/NewtonRaphson.cc"

include/CMakeFiles/OurInclude.dir/NewtonRaphson.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OurInclude.dir/NewtonRaphson.cc.i"
	cd "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/build/include" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/include/NewtonRaphson.cc" > CMakeFiles/OurInclude.dir/NewtonRaphson.cc.i

include/CMakeFiles/OurInclude.dir/NewtonRaphson.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OurInclude.dir/NewtonRaphson.cc.s"
	cd "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/build/include" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/include/NewtonRaphson.cc" -o CMakeFiles/OurInclude.dir/NewtonRaphson.cc.s

include/CMakeFiles/OurInclude.dir/NewtonModificado.cc.o: include/CMakeFiles/OurInclude.dir/flags.make
include/CMakeFiles/OurInclude.dir/NewtonModificado.cc.o: ../include/NewtonModificado.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object include/CMakeFiles/OurInclude.dir/NewtonModificado.cc.o"
	cd "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/build/include" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OurInclude.dir/NewtonModificado.cc.o -c "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/include/NewtonModificado.cc"

include/CMakeFiles/OurInclude.dir/NewtonModificado.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OurInclude.dir/NewtonModificado.cc.i"
	cd "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/build/include" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/include/NewtonModificado.cc" > CMakeFiles/OurInclude.dir/NewtonModificado.cc.i

include/CMakeFiles/OurInclude.dir/NewtonModificado.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OurInclude.dir/NewtonModificado.cc.s"
	cd "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/build/include" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/include/NewtonModificado.cc" -o CMakeFiles/OurInclude.dir/NewtonModificado.cc.s

include/CMakeFiles/OurInclude.dir/Secante.cc.o: include/CMakeFiles/OurInclude.dir/flags.make
include/CMakeFiles/OurInclude.dir/Secante.cc.o: ../include/Secante.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object include/CMakeFiles/OurInclude.dir/Secante.cc.o"
	cd "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/build/include" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OurInclude.dir/Secante.cc.o -c "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/include/Secante.cc"

include/CMakeFiles/OurInclude.dir/Secante.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OurInclude.dir/Secante.cc.i"
	cd "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/build/include" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/include/Secante.cc" > CMakeFiles/OurInclude.dir/Secante.cc.i

include/CMakeFiles/OurInclude.dir/Secante.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OurInclude.dir/Secante.cc.s"
	cd "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/build/include" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/include/Secante.cc" -o CMakeFiles/OurInclude.dir/Secante.cc.s

# Object files for target OurInclude
OurInclude_OBJECTS = \
"CMakeFiles/OurInclude.dir/Aux.cc.o" \
"CMakeFiles/OurInclude.dir/NewtonRaphson.cc.o" \
"CMakeFiles/OurInclude.dir/NewtonModificado.cc.o" \
"CMakeFiles/OurInclude.dir/Secante.cc.o"

# External object files for target OurInclude
OurInclude_EXTERNAL_OBJECTS =

include/libOurInclude.a: include/CMakeFiles/OurInclude.dir/Aux.cc.o
include/libOurInclude.a: include/CMakeFiles/OurInclude.dir/NewtonRaphson.cc.o
include/libOurInclude.a: include/CMakeFiles/OurInclude.dir/NewtonModificado.cc.o
include/libOurInclude.a: include/CMakeFiles/OurInclude.dir/Secante.cc.o
include/libOurInclude.a: include/CMakeFiles/OurInclude.dir/build.make
include/libOurInclude.a: include/CMakeFiles/OurInclude.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library libOurInclude.a"
	cd "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/build/include" && $(CMAKE_COMMAND) -P CMakeFiles/OurInclude.dir/cmake_clean_target.cmake
	cd "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/build/include" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OurInclude.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
include/CMakeFiles/OurInclude.dir/build: include/libOurInclude.a

.PHONY : include/CMakeFiles/OurInclude.dir/build

include/CMakeFiles/OurInclude.dir/clean:
	cd "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/build/include" && $(CMAKE_COMMAND) -P CMakeFiles/OurInclude.dir/cmake_clean.cmake
.PHONY : include/CMakeFiles/OurInclude.dir/clean

include/CMakeFiles/OurInclude.dir/depend:
	cd "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01" "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/include" "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/build" "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/build/include" "/mnt/c/Users/raske/Desktop/ufc/6-semestre/Métodos Numéricos/trabalho1/TrabalhoMetodos01/build/include/CMakeFiles/OurInclude.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : include/CMakeFiles/OurInclude.dir/depend

