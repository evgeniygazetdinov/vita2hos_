# Find VitaSDK
# This module defines
# VITASDK_FOUND, if false, do not try to link to VitaSDK
# VITASDK_ROOT_DIR, where to find VitaSDK
# VITASDK_INCLUDE_DIRS, where to find VitaSDK headers
# VITASDK_LIBRARIES, VitaSDK libraries to link against

# Try to find VitaSDK in standard locations
find_path(VITASDK_ROOT_DIR
    NAMES arm-vita-eabi
    PATHS
    /usr/local/vitasdk
    $ENV{VITASDK}
    DOC "VitaSDK root directory"
)

# Find include directories
find_path(VITASDK_INCLUDE_DIR
    NAMES psp2/kernel/processmgr.h
    PATHS
    ${VITASDK_ROOT_DIR}/arm-vita-eabi/include
    DOC "VitaSDK include directory"
)

# Find libraries directory
set(VITASDK_LIBRARY_DIR ${VITASDK_ROOT_DIR}/arm-vita-eabi/lib)

# Handle the QUIETLY and REQUIRED arguments and set VITASDK_FOUND to TRUE if all listed variables are TRUE
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(VitaSDK DEFAULT_MSG VITASDK_ROOT_DIR VITASDK_INCLUDE_DIR)

# Set output variables
if(VITASDK_FOUND)
    set(VITASDK_INCLUDE_DIRS ${VITASDK_INCLUDE_DIR})
    set(VITASDK_LIBRARIES ${VITASDK_LIBRARY_DIR})
endif()

mark_as_advanced(VITASDK_ROOT_DIR VITASDK_INCLUDE_DIR)
