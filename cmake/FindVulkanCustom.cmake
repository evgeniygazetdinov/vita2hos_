# Find Vulkan
# This module defines
# VULKAN_FOUND, if false, do not try to link to Vulkan
# VULKAN_INCLUDE_DIR, where to find vulkan/vulkan.h
# VULKAN_LIBRARY, the vulkan library to link against

if(WIN32)
    find_path(VULKAN_INCLUDE_DIR NAMES vulkan/vulkan.h PATHS
        "$ENV{VULKAN_SDK}/Include"
        "$ENV{VK_SDK_PATH}/Include")
    if(CMAKE_SIZEOF_VOID_P EQUAL 8)
        find_library(VULKAN_LIBRARY NAMES vulkan-1 PATHS
            "$ENV{VULKAN_SDK}/Lib"
            "$ENV{VULKAN_SDK}/Bin"
            "$ENV{VK_SDK_PATH}/Bin")
    else()
        find_library(VULKAN_LIBRARY NAMES vulkan-1 PATHS
            "$ENV{VULKAN_SDK}/Lib32"
            "$ENV{VULKAN_SDK}/Bin32"
            "$ENV{VK_SDK_PATH}/Bin32")
    endif()
else()
    find_path(VULKAN_INCLUDE_DIR NAMES vulkan/vulkan.h PATHS
        "$ENV{VULKAN_SDK}/include"
        "/usr/include"
        "/usr/local/include"
        "/opt/vulkan/include")
    find_library(VULKAN_LIBRARY NAMES vulkan PATHS
        "$ENV{VULKAN_SDK}/lib"
        "/usr/lib"
        "/usr/lib/x86_64-linux-gnu"
        "/usr/lib64"
        "/usr/local/lib"
        "/usr/local/lib64"
        "/opt/vulkan/lib")
endif()

# Handle REQUIRED and QUIET arguments
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(VulkanCustom 
    REQUIRED_VARS 
        VULKAN_LIBRARY 
        VULKAN_INCLUDE_DIR
    FAIL_MESSAGE 
        "Could NOT find Vulkan. Install Vulkan development package: sudo apt-get install libvulkan-dev"
)

mark_as_advanced(VULKAN_INCLUDE_DIR VULKAN_LIBRARY)

if(VULKANCUSTOM_FOUND)
    set(VULKAN_LIBRARIES ${VULKAN_LIBRARY})
    set(VULKAN_INCLUDE_DIRS ${VULKAN_INCLUDE_DIR})
endif()
