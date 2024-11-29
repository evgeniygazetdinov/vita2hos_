cmake_minimum_required(VERSION 3.13)
project(vita2hos C CXX)

# Set CMake module path
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake")

# Set Vulkan paths explicitly if not found by find_package
set(VULKAN_INCLUDE_DIR "/usr/include")
set(VULKAN_LIBRARY "/usr/lib/x86_64-linux-gnu/libvulkan.so")

# Find required packages
find_package(VitaSDK REQUIRED)
find_package(DevkitPro)

# Try to find system Vulkan first
find_package(Vulkan QUIET)
if(NOT Vulkan_FOUND)
    # If system Vulkan not found, try our custom finder
    find_package(VulkanCustom REQUIRED)
endif()

# Set C/C++ standards
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Add compiler definitions for glibc compatibility
add_compile_definitions(
    _GNU_SOURCE
    __GLIBC_USE(IEC_60559_BFP_EXT_C2X)=0
    __GLIBC_USE(ISOC2X)=0
    __GLIBC_USE(IEC_60559_TYPES_EXT)=0
)

# Set compiler flags
if(CMAKE_CXX_COMPILER_ID MATCHES "GNU|Clang")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fno-builtin")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-builtin")
endif()

# Set include directories
include_directories(
    ${CMAKE_SOURCE_DIR}/include
    ${VITASDK_INCLUDE_DIRS}
    ${VULKAN_INCLUDE_DIRS}
)

if(DEVKITPRO_FOUND)
    include_directories(${DEVKITPRO_INCLUDE_DIRS})
endif()

# Collect source files
file(GLOB_RECURSE SOURCES 
    "src/*.c"
    "src/*.cpp"
)

# Create library target
add_library(vita2hos STATIC ${SOURCES})

# Set compile options
target_compile_options(vita2hos PRIVATE
    -Wall
    -Wextra
    -Werror
    -fPIC
    -Wno-unused-parameter
    -Wno-missing-field-initializers
)

# Set compile definitions
target_compile_definitions(vita2hos PRIVATE
    VK_USE_PLATFORM_XLIB_KHR
)

# Link libraries
target_link_libraries(vita2hos PRIVATE
    ${VULKAN_LIBRARIES}
    ${VITASDK_LIBRARIES}
)

if(DEVKITPRO_FOUND)
    target_link_libraries(vita2hos PRIVATE ${DEVKITPRO_LIBRARIES})
endif()

# Install rules
install(TARGETS vita2hos
    ARCHIVE DESTINATION lib
    LIBRARY DESTINATION lib
    RUNTIME DESTINATION bin
)

install(DIRECTORY include/
    DESTINATION include/vita2hos
    FILES_MATCHING PATTERN "*.h")
