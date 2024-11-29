# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ev/ClangProjects/vita2hos_

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ev/ClangProjects/vita2hos_

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ev/ClangProjects/vita2hos_/CMakeFiles /home/ev/ClangProjects/vita2hos_//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ev/ClangProjects/vita2hos_/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named vita2hos

# Build rule for target.
vita2hos: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 vita2hos
.PHONY : vita2hos

# fast build rule for target.
vita2hos/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/build
.PHONY : vita2hos/fast

# target to build an object file
Vita3K/external/miniz/miniz.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/external/miniz/miniz.o
.PHONY : Vita3K/external/miniz/miniz.o

# target to preprocess a source file
Vita3K/external/miniz/miniz.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/external/miniz/miniz.i
.PHONY : Vita3K/external/miniz/miniz.i

# target to generate assembly for a file
Vita3K/external/miniz/miniz.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/external/miniz/miniz.s
.PHONY : Vita3K/external/miniz/miniz.s

# target to build an object file
Vita3K/vita3k/gxm/src/attributes.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/gxm/src/attributes.o
.PHONY : Vita3K/vita3k/gxm/src/attributes.o

# target to preprocess a source file
Vita3K/vita3k/gxm/src/attributes.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/gxm/src/attributes.i
.PHONY : Vita3K/vita3k/gxm/src/attributes.i

# target to generate assembly for a file
Vita3K/vita3k/gxm/src/attributes.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/gxm/src/attributes.s
.PHONY : Vita3K/vita3k/gxm/src/attributes.s

# target to build an object file
Vita3K/vita3k/gxm/src/color.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/gxm/src/color.o
.PHONY : Vita3K/vita3k/gxm/src/color.o

# target to preprocess a source file
Vita3K/vita3k/gxm/src/color.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/gxm/src/color.i
.PHONY : Vita3K/vita3k/gxm/src/color.i

# target to generate assembly for a file
Vita3K/vita3k/gxm/src/color.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/gxm/src/color.s
.PHONY : Vita3K/vita3k/gxm/src/color.s

# target to build an object file
Vita3K/vita3k/gxm/src/gxp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/gxm/src/gxp.o
.PHONY : Vita3K/vita3k/gxm/src/gxp.o

# target to preprocess a source file
Vita3K/vita3k/gxm/src/gxp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/gxm/src/gxp.i
.PHONY : Vita3K/vita3k/gxm/src/gxp.i

# target to generate assembly for a file
Vita3K/vita3k/gxm/src/gxp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/gxm/src/gxp.s
.PHONY : Vita3K/vita3k/gxm/src/gxp.s

# target to build an object file
Vita3K/vita3k/gxm/src/stream.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/gxm/src/stream.o
.PHONY : Vita3K/vita3k/gxm/src/stream.o

# target to preprocess a source file
Vita3K/vita3k/gxm/src/stream.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/gxm/src/stream.i
.PHONY : Vita3K/vita3k/gxm/src/stream.i

# target to generate assembly for a file
Vita3K/vita3k/gxm/src/stream.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/gxm/src/stream.s
.PHONY : Vita3K/vita3k/gxm/src/stream.s

# target to build an object file
Vita3K/vita3k/gxm/src/textures.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/gxm/src/textures.o
.PHONY : Vita3K/vita3k/gxm/src/textures.o

# target to preprocess a source file
Vita3K/vita3k/gxm/src/textures.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/gxm/src/textures.i
.PHONY : Vita3K/vita3k/gxm/src/textures.i

# target to generate assembly for a file
Vita3K/vita3k/gxm/src/textures.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/gxm/src/textures.s
.PHONY : Vita3K/vita3k/gxm/src/textures.s

# target to build an object file
Vita3K/vita3k/gxm/src/transfer.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/gxm/src/transfer.o
.PHONY : Vita3K/vita3k/gxm/src/transfer.o

# target to preprocess a source file
Vita3K/vita3k/gxm/src/transfer.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/gxm/src/transfer.i
.PHONY : Vita3K/vita3k/gxm/src/transfer.i

# target to generate assembly for a file
Vita3K/vita3k/gxm/src/transfer.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/gxm/src/transfer.s
.PHONY : Vita3K/vita3k/gxm/src/transfer.s

# target to build an object file
Vita3K/vita3k/shader/src/gxp_parser.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/gxp_parser.o
.PHONY : Vita3K/vita3k/shader/src/gxp_parser.o

# target to preprocess a source file
Vita3K/vita3k/shader/src/gxp_parser.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/gxp_parser.i
.PHONY : Vita3K/vita3k/shader/src/gxp_parser.i

# target to generate assembly for a file
Vita3K/vita3k/shader/src/gxp_parser.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/gxp_parser.s
.PHONY : Vita3K/vita3k/shader/src/gxp_parser.s

# target to build an object file
Vita3K/vita3k/shader/src/spirv_recompiler.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/spirv_recompiler.o
.PHONY : Vita3K/vita3k/shader/src/spirv_recompiler.o

# target to preprocess a source file
Vita3K/vita3k/shader/src/spirv_recompiler.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/spirv_recompiler.i
.PHONY : Vita3K/vita3k/shader/src/spirv_recompiler.i

# target to generate assembly for a file
Vita3K/vita3k/shader/src/spirv_recompiler.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/spirv_recompiler.s
.PHONY : Vita3K/vita3k/shader/src/spirv_recompiler.s

# target to build an object file
Vita3K/vita3k/shader/src/translator/alu.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/translator/alu.o
.PHONY : Vita3K/vita3k/shader/src/translator/alu.o

# target to preprocess a source file
Vita3K/vita3k/shader/src/translator/alu.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/translator/alu.i
.PHONY : Vita3K/vita3k/shader/src/translator/alu.i

# target to generate assembly for a file
Vita3K/vita3k/shader/src/translator/alu.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/translator/alu.s
.PHONY : Vita3K/vita3k/shader/src/translator/alu.s

# target to build an object file
Vita3K/vita3k/shader/src/translator/branch_cond.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/translator/branch_cond.o
.PHONY : Vita3K/vita3k/shader/src/translator/branch_cond.o

# target to preprocess a source file
Vita3K/vita3k/shader/src/translator/branch_cond.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/translator/branch_cond.i
.PHONY : Vita3K/vita3k/shader/src/translator/branch_cond.i

# target to generate assembly for a file
Vita3K/vita3k/shader/src/translator/branch_cond.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/translator/branch_cond.s
.PHONY : Vita3K/vita3k/shader/src/translator/branch_cond.s

# target to build an object file
Vita3K/vita3k/shader/src/translator/data.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/translator/data.o
.PHONY : Vita3K/vita3k/shader/src/translator/data.o

# target to preprocess a source file
Vita3K/vita3k/shader/src/translator/data.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/translator/data.i
.PHONY : Vita3K/vita3k/shader/src/translator/data.i

# target to generate assembly for a file
Vita3K/vita3k/shader/src/translator/data.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/translator/data.s
.PHONY : Vita3K/vita3k/shader/src/translator/data.s

# target to build an object file
Vita3K/vita3k/shader/src/translator/ialu.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/translator/ialu.o
.PHONY : Vita3K/vita3k/shader/src/translator/ialu.o

# target to preprocess a source file
Vita3K/vita3k/shader/src/translator/ialu.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/translator/ialu.i
.PHONY : Vita3K/vita3k/shader/src/translator/ialu.i

# target to generate assembly for a file
Vita3K/vita3k/shader/src/translator/ialu.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/translator/ialu.s
.PHONY : Vita3K/vita3k/shader/src/translator/ialu.s

# target to build an object file
Vita3K/vita3k/shader/src/translator/illegal.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/translator/illegal.o
.PHONY : Vita3K/vita3k/shader/src/translator/illegal.o

# target to preprocess a source file
Vita3K/vita3k/shader/src/translator/illegal.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/translator/illegal.i
.PHONY : Vita3K/vita3k/shader/src/translator/illegal.i

# target to generate assembly for a file
Vita3K/vita3k/shader/src/translator/illegal.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/translator/illegal.s
.PHONY : Vita3K/vita3k/shader/src/translator/illegal.s

# target to build an object file
Vita3K/vita3k/shader/src/translator/special.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/translator/special.o
.PHONY : Vita3K/vita3k/shader/src/translator/special.o

# target to preprocess a source file
Vita3K/vita3k/shader/src/translator/special.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/translator/special.i
.PHONY : Vita3K/vita3k/shader/src/translator/special.i

# target to generate assembly for a file
Vita3K/vita3k/shader/src/translator/special.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/translator/special.s
.PHONY : Vita3K/vita3k/shader/src/translator/special.s

# target to build an object file
Vita3K/vita3k/shader/src/translator/texture.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/translator/texture.o
.PHONY : Vita3K/vita3k/shader/src/translator/texture.o

# target to preprocess a source file
Vita3K/vita3k/shader/src/translator/texture.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/translator/texture.i
.PHONY : Vita3K/vita3k/shader/src/translator/texture.i

# target to generate assembly for a file
Vita3K/vita3k/shader/src/translator/texture.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/translator/texture.s
.PHONY : Vita3K/vita3k/shader/src/translator/texture.s

# target to build an object file
Vita3K/vita3k/shader/src/translator/utils.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/translator/utils.o
.PHONY : Vita3K/vita3k/shader/src/translator/utils.o

# target to preprocess a source file
Vita3K/vita3k/shader/src/translator/utils.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/translator/utils.i
.PHONY : Vita3K/vita3k/shader/src/translator/utils.i

# target to generate assembly for a file
Vita3K/vita3k/shader/src/translator/utils.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/translator/utils.s
.PHONY : Vita3K/vita3k/shader/src/translator/utils.s

# target to build an object file
Vita3K/vita3k/shader/src/usse_decode_helpers.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/usse_decode_helpers.o
.PHONY : Vita3K/vita3k/shader/src/usse_decode_helpers.o

# target to preprocess a source file
Vita3K/vita3k/shader/src/usse_decode_helpers.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/usse_decode_helpers.i
.PHONY : Vita3K/vita3k/shader/src/usse_decode_helpers.i

# target to generate assembly for a file
Vita3K/vita3k/shader/src/usse_decode_helpers.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/usse_decode_helpers.s
.PHONY : Vita3K/vita3k/shader/src/usse_decode_helpers.s

# target to build an object file
Vita3K/vita3k/shader/src/usse_disasm.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/usse_disasm.o
.PHONY : Vita3K/vita3k/shader/src/usse_disasm.o

# target to preprocess a source file
Vita3K/vita3k/shader/src/usse_disasm.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/usse_disasm.i
.PHONY : Vita3K/vita3k/shader/src/usse_disasm.i

# target to generate assembly for a file
Vita3K/vita3k/shader/src/usse_disasm.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/usse_disasm.s
.PHONY : Vita3K/vita3k/shader/src/usse_disasm.s

# target to build an object file
Vita3K/vita3k/shader/src/usse_program_analyzer.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/usse_program_analyzer.o
.PHONY : Vita3K/vita3k/shader/src/usse_program_analyzer.o

# target to preprocess a source file
Vita3K/vita3k/shader/src/usse_program_analyzer.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/usse_program_analyzer.i
.PHONY : Vita3K/vita3k/shader/src/usse_program_analyzer.i

# target to generate assembly for a file
Vita3K/vita3k/shader/src/usse_program_analyzer.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/usse_program_analyzer.s
.PHONY : Vita3K/vita3k/shader/src/usse_program_analyzer.s

# target to build an object file
Vita3K/vita3k/shader/src/usse_translator_entry.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/usse_translator_entry.o
.PHONY : Vita3K/vita3k/shader/src/usse_translator_entry.o

# target to preprocess a source file
Vita3K/vita3k/shader/src/usse_translator_entry.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/usse_translator_entry.i
.PHONY : Vita3K/vita3k/shader/src/usse_translator_entry.i

# target to generate assembly for a file
Vita3K/vita3k/shader/src/usse_translator_entry.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/usse_translator_entry.s
.PHONY : Vita3K/vita3k/shader/src/usse_translator_entry.s

# target to build an object file
Vita3K/vita3k/shader/src/usse_utilities.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/usse_utilities.o
.PHONY : Vita3K/vita3k/shader/src/usse_utilities.o

# target to preprocess a source file
Vita3K/vita3k/shader/src/usse_utilities.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/usse_utilities.i
.PHONY : Vita3K/vita3k/shader/src/usse_utilities.i

# target to generate assembly for a file
Vita3K/vita3k/shader/src/usse_utilities.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/Vita3K/vita3k/shader/src/usse_utilities.s
.PHONY : Vita3K/vita3k/shader/src/usse_utilities.s

# target to build an object file
source/load.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/load.o
.PHONY : source/load.o

# target to preprocess a source file
source/load.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/load.i
.PHONY : source/load.i

# target to generate assembly for a file
source/load.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/load.s
.PHONY : source/load.s

# target to build an object file
source/log.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/log.o
.PHONY : source/log.o

# target to preprocess a source file
source/log.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/log.i
.PHONY : source/log.i

# target to generate assembly for a file
source/log.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/log.s
.PHONY : source/log.s

# target to build an object file
source/main.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/main.o
.PHONY : source/main.o

# target to preprocess a source file
source/main.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/main.i
.PHONY : source/main.i

# target to generate assembly for a file
source/main.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/main.s
.PHONY : source/main.s

# target to build an object file
source/module.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/module.o
.PHONY : source/module.o

# target to preprocess a source file
source/module.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/module.i
.PHONY : source/module.i

# target to generate assembly for a file
source/module.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/module.s
.PHONY : source/module.s

# target to build an object file
source/modules/SceCtrl.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/modules/SceCtrl.o
.PHONY : source/modules/SceCtrl.o

# target to preprocess a source file
source/modules/SceCtrl.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/modules/SceCtrl.i
.PHONY : source/modules/SceCtrl.i

# target to generate assembly for a file
source/modules/SceCtrl.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/modules/SceCtrl.s
.PHONY : source/modules/SceCtrl.s

# target to build an object file
source/modules/SceDisplay.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/modules/SceDisplay.o
.PHONY : source/modules/SceDisplay.o

# target to preprocess a source file
source/modules/SceDisplay.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/modules/SceDisplay.i
.PHONY : source/modules/SceDisplay.i

# target to generate assembly for a file
source/modules/SceDisplay.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/modules/SceDisplay.s
.PHONY : source/modules/SceDisplay.s

# target to build an object file
source/modules/SceGxm.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/modules/SceGxm.o
.PHONY : source/modules/SceGxm.o

# target to preprocess a source file
source/modules/SceGxm.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/modules/SceGxm.i
.PHONY : source/modules/SceGxm.i

# target to generate assembly for a file
source/modules/SceGxm.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/modules/SceGxm.s
.PHONY : source/modules/SceGxm.s

# target to build an object file
source/modules/SceGxm_cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/modules/SceGxm_cpp.o
.PHONY : source/modules/SceGxm_cpp.o

# target to preprocess a source file
source/modules/SceGxm_cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/modules/SceGxm_cpp.i
.PHONY : source/modules/SceGxm_cpp.i

# target to generate assembly for a file
source/modules/SceGxm_cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/modules/SceGxm_cpp.s
.PHONY : source/modules/SceGxm_cpp.s

# target to build an object file
source/modules/SceKernelThreadMgr.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/modules/SceKernelThreadMgr.o
.PHONY : source/modules/SceKernelThreadMgr.o

# target to preprocess a source file
source/modules/SceKernelThreadMgr.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/modules/SceKernelThreadMgr.i
.PHONY : source/modules/SceKernelThreadMgr.i

# target to generate assembly for a file
source/modules/SceKernelThreadMgr.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/modules/SceKernelThreadMgr.s
.PHONY : source/modules/SceKernelThreadMgr.s

# target to build an object file
source/modules/SceLibKernel.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/modules/SceLibKernel.o
.PHONY : source/modules/SceLibKernel.o

# target to preprocess a source file
source/modules/SceLibKernel.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/modules/SceLibKernel.i
.PHONY : source/modules/SceLibKernel.i

# target to generate assembly for a file
source/modules/SceLibKernel.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/modules/SceLibKernel.s
.PHONY : source/modules/SceLibKernel.s

# target to build an object file
source/modules/SceSysmem.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/modules/SceSysmem.o
.PHONY : source/modules/SceSysmem.o

# target to preprocess a source file
source/modules/SceSysmem.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/modules/SceSysmem.i
.PHONY : source/modules/SceSysmem.i

# target to generate assembly for a file
source/modules/SceSysmem.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/modules/SceSysmem.s
.PHONY : source/modules/SceSysmem.s

# target to build an object file
source/modules/SceTouch.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/modules/SceTouch.o
.PHONY : source/modules/SceTouch.o

# target to preprocess a source file
source/modules/SceTouch.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/modules/SceTouch.i
.PHONY : source/modules/SceTouch.i

# target to generate assembly for a file
source/modules/SceTouch.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/modules/SceTouch.s
.PHONY : source/modules/SceTouch.s

# target to build an object file
source/mutex.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/mutex.o
.PHONY : source/mutex.o

# target to preprocess a source file
source/mutex.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/mutex.i
.PHONY : source/mutex.i

# target to generate assembly for a file
source/mutex.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/mutex.s
.PHONY : source/mutex.s

# target to build an object file
source/uam_compiler_iface_c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/uam_compiler_iface_c.o
.PHONY : source/uam_compiler_iface_c.o

# target to preprocess a source file
source/uam_compiler_iface_c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/uam_compiler_iface_c.i
.PHONY : source/uam_compiler_iface_c.i

# target to generate assembly for a file
source/uam_compiler_iface_c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/uam_compiler_iface_c.s
.PHONY : source/uam_compiler_iface_c.s

# target to build an object file
source/util.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/util.o
.PHONY : source/util.o

# target to preprocess a source file
source/util.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/util.i
.PHONY : source/util.i

# target to generate assembly for a file
source/util.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/util.s
.PHONY : source/util.s

# target to build an object file
source/vita3k_shader_recompiler_iface_c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/vita3k_shader_recompiler_iface_c.o
.PHONY : source/vita3k_shader_recompiler_iface_c.o

# target to preprocess a source file
source/vita3k_shader_recompiler_iface_c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/vita3k_shader_recompiler_iface_c.i
.PHONY : source/vita3k_shader_recompiler_iface_c.i

# target to generate assembly for a file
source/vita3k_shader_recompiler_iface_c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/source/vita3k_shader_recompiler_iface_c.s
.PHONY : source/vita3k_shader_recompiler_iface_c.s

# target to build an object file
src/uam/gxm/color_surface.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/src/uam/gxm/color_surface.o
.PHONY : src/uam/gxm/color_surface.o

# target to preprocess a source file
src/uam/gxm/color_surface.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/src/uam/gxm/color_surface.i
.PHONY : src/uam/gxm/color_surface.i

# target to generate assembly for a file
src/uam/gxm/color_surface.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/vita2hos.dir/build.make CMakeFiles/vita2hos.dir/src/uam/gxm/color_surface.s
.PHONY : src/uam/gxm/color_surface.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... vita2hos"
	@echo "... Vita3K/external/miniz/miniz.o"
	@echo "... Vita3K/external/miniz/miniz.i"
	@echo "... Vita3K/external/miniz/miniz.s"
	@echo "... Vita3K/vita3k/gxm/src/attributes.o"
	@echo "... Vita3K/vita3k/gxm/src/attributes.i"
	@echo "... Vita3K/vita3k/gxm/src/attributes.s"
	@echo "... Vita3K/vita3k/gxm/src/color.o"
	@echo "... Vita3K/vita3k/gxm/src/color.i"
	@echo "... Vita3K/vita3k/gxm/src/color.s"
	@echo "... Vita3K/vita3k/gxm/src/gxp.o"
	@echo "... Vita3K/vita3k/gxm/src/gxp.i"
	@echo "... Vita3K/vita3k/gxm/src/gxp.s"
	@echo "... Vita3K/vita3k/gxm/src/stream.o"
	@echo "... Vita3K/vita3k/gxm/src/stream.i"
	@echo "... Vita3K/vita3k/gxm/src/stream.s"
	@echo "... Vita3K/vita3k/gxm/src/textures.o"
	@echo "... Vita3K/vita3k/gxm/src/textures.i"
	@echo "... Vita3K/vita3k/gxm/src/textures.s"
	@echo "... Vita3K/vita3k/gxm/src/transfer.o"
	@echo "... Vita3K/vita3k/gxm/src/transfer.i"
	@echo "... Vita3K/vita3k/gxm/src/transfer.s"
	@echo "... Vita3K/vita3k/shader/src/gxp_parser.o"
	@echo "... Vita3K/vita3k/shader/src/gxp_parser.i"
	@echo "... Vita3K/vita3k/shader/src/gxp_parser.s"
	@echo "... Vita3K/vita3k/shader/src/spirv_recompiler.o"
	@echo "... Vita3K/vita3k/shader/src/spirv_recompiler.i"
	@echo "... Vita3K/vita3k/shader/src/spirv_recompiler.s"
	@echo "... Vita3K/vita3k/shader/src/translator/alu.o"
	@echo "... Vita3K/vita3k/shader/src/translator/alu.i"
	@echo "... Vita3K/vita3k/shader/src/translator/alu.s"
	@echo "... Vita3K/vita3k/shader/src/translator/branch_cond.o"
	@echo "... Vita3K/vita3k/shader/src/translator/branch_cond.i"
	@echo "... Vita3K/vita3k/shader/src/translator/branch_cond.s"
	@echo "... Vita3K/vita3k/shader/src/translator/data.o"
	@echo "... Vita3K/vita3k/shader/src/translator/data.i"
	@echo "... Vita3K/vita3k/shader/src/translator/data.s"
	@echo "... Vita3K/vita3k/shader/src/translator/ialu.o"
	@echo "... Vita3K/vita3k/shader/src/translator/ialu.i"
	@echo "... Vita3K/vita3k/shader/src/translator/ialu.s"
	@echo "... Vita3K/vita3k/shader/src/translator/illegal.o"
	@echo "... Vita3K/vita3k/shader/src/translator/illegal.i"
	@echo "... Vita3K/vita3k/shader/src/translator/illegal.s"
	@echo "... Vita3K/vita3k/shader/src/translator/special.o"
	@echo "... Vita3K/vita3k/shader/src/translator/special.i"
	@echo "... Vita3K/vita3k/shader/src/translator/special.s"
	@echo "... Vita3K/vita3k/shader/src/translator/texture.o"
	@echo "... Vita3K/vita3k/shader/src/translator/texture.i"
	@echo "... Vita3K/vita3k/shader/src/translator/texture.s"
	@echo "... Vita3K/vita3k/shader/src/translator/utils.o"
	@echo "... Vita3K/vita3k/shader/src/translator/utils.i"
	@echo "... Vita3K/vita3k/shader/src/translator/utils.s"
	@echo "... Vita3K/vita3k/shader/src/usse_decode_helpers.o"
	@echo "... Vita3K/vita3k/shader/src/usse_decode_helpers.i"
	@echo "... Vita3K/vita3k/shader/src/usse_decode_helpers.s"
	@echo "... Vita3K/vita3k/shader/src/usse_disasm.o"
	@echo "... Vita3K/vita3k/shader/src/usse_disasm.i"
	@echo "... Vita3K/vita3k/shader/src/usse_disasm.s"
	@echo "... Vita3K/vita3k/shader/src/usse_program_analyzer.o"
	@echo "... Vita3K/vita3k/shader/src/usse_program_analyzer.i"
	@echo "... Vita3K/vita3k/shader/src/usse_program_analyzer.s"
	@echo "... Vita3K/vita3k/shader/src/usse_translator_entry.o"
	@echo "... Vita3K/vita3k/shader/src/usse_translator_entry.i"
	@echo "... Vita3K/vita3k/shader/src/usse_translator_entry.s"
	@echo "... Vita3K/vita3k/shader/src/usse_utilities.o"
	@echo "... Vita3K/vita3k/shader/src/usse_utilities.i"
	@echo "... Vita3K/vita3k/shader/src/usse_utilities.s"
	@echo "... source/load.o"
	@echo "... source/load.i"
	@echo "... source/load.s"
	@echo "... source/log.o"
	@echo "... source/log.i"
	@echo "... source/log.s"
	@echo "... source/main.o"
	@echo "... source/main.i"
	@echo "... source/main.s"
	@echo "... source/module.o"
	@echo "... source/module.i"
	@echo "... source/module.s"
	@echo "... source/modules/SceCtrl.o"
	@echo "... source/modules/SceCtrl.i"
	@echo "... source/modules/SceCtrl.s"
	@echo "... source/modules/SceDisplay.o"
	@echo "... source/modules/SceDisplay.i"
	@echo "... source/modules/SceDisplay.s"
	@echo "... source/modules/SceGxm.o"
	@echo "... source/modules/SceGxm.i"
	@echo "... source/modules/SceGxm.s"
	@echo "... source/modules/SceGxm_cpp.o"
	@echo "... source/modules/SceGxm_cpp.i"
	@echo "... source/modules/SceGxm_cpp.s"
	@echo "... source/modules/SceKernelThreadMgr.o"
	@echo "... source/modules/SceKernelThreadMgr.i"
	@echo "... source/modules/SceKernelThreadMgr.s"
	@echo "... source/modules/SceLibKernel.o"
	@echo "... source/modules/SceLibKernel.i"
	@echo "... source/modules/SceLibKernel.s"
	@echo "... source/modules/SceSysmem.o"
	@echo "... source/modules/SceSysmem.i"
	@echo "... source/modules/SceSysmem.s"
	@echo "... source/modules/SceTouch.o"
	@echo "... source/modules/SceTouch.i"
	@echo "... source/modules/SceTouch.s"
	@echo "... source/mutex.o"
	@echo "... source/mutex.i"
	@echo "... source/mutex.s"
	@echo "... source/uam_compiler_iface_c.o"
	@echo "... source/uam_compiler_iface_c.i"
	@echo "... source/uam_compiler_iface_c.s"
	@echo "... source/util.o"
	@echo "... source/util.i"
	@echo "... source/util.s"
	@echo "... source/vita3k_shader_recompiler_iface_c.o"
	@echo "... source/vita3k_shader_recompiler_iface_c.i"
	@echo "... source/vita3k_shader_recompiler_iface_c.s"
	@echo "... src/uam/gxm/color_surface.o"
	@echo "... src/uam/gxm/color_surface.i"
	@echo "... src/uam/gxm/color_surface.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

