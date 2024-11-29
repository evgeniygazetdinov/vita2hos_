# Find DevkitPro
# This module defines
# DEVKITPRO_FOUND, if false, do not try to link to DevkitPro
# DEVKITPRO_ROOT_DIR, where to find DevkitPro
# DEVKITPRO_INCLUDE_DIRS, where to find DevkitPro headers
# DEVKITPRO_LIBRARIES, DevkitPro libraries to link against

# Try to find DevkitPro in standard locations
find_path(DEVKITPRO_ROOT_DIR
    NAMES devkitA64
    PATHS
    $ENV{DEVKITPRO}
    /opt/devkitpro
    DOC "DevkitPro root directory"
)

# Find include directories
find_path(DEVKITPRO_INCLUDE_DIR
    NAMES switch.h
    PATHS
    ${DEVKITPRO_ROOT_DIR}/libnx/include
    DOC "DevkitPro include directory"
)

# Find libraries directory
set(DEVKITPRO_LIBRARY_DIR ${DEVKITPRO_ROOT_DIR}/libnx/lib)

# Handle the QUIETLY and REQUIRED arguments and set DEVKITPRO_FOUND to TRUE if all listed variables are TRUE
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(DevkitPro DEFAULT_MSG DEVKITPRO_ROOT_DIR DEVKITPRO_INCLUDE_DIR)

# Set output variables
if(DEVKITPRO_FOUND)
    set(DEVKITPRO_INCLUDE_DIRS ${DEVKITPRO_INCLUDE_DIR})
    set(DEVKITPRO_LIBRARIES ${DEVKITPRO_LIBRARY_DIR})
endif()

mark_as_advanced(DEVKITPRO_ROOT_DIR DEVKITPRO_INCLUDE_DIR)
