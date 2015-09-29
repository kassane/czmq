################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Please refer to the README for information about making permanent changes.  #
################################################################################

include(FindPkgConfig)
PKG_CHECK_MODULES(PC_UUID "uuid")
IF (NOT PC_UUID_FOUND)
    PKG_CHECK_MODULES(PC_UUID "uuid")
ENDIF (NOT PC_UUID_FOUND)

# some libraries install the headers is a subdirectory of the include dir
# returned by pkg-config, so use a wildcard match to improve chances of finding
# headers and SOs.
find_path(
    UUID_INCLUDE_DIRS
    NAMES uuid.h
    HINTS ${PC_UUID_INCLUDE_DIRS} ${PC_UUID_INCLUDE_DIRS}/*
)

find_library(
    UUID_LIBRARIES
    NAMES uuid
    HINTS ${PC_UUID_LIBRARY_DIRS} ${PC_UUID_LIBRARY_DIRS}/*
)

IF (NOT UUID_INCLUDE_DIRS STREQUAL UUID_INCLUDE_DIRS-NOTFOUND AND NOT UUID_LIBRARIES STREQUAL UUID_LIBRARIES-NOTFOUND)
    ADD_DEFINITIONS(-DHAVE_UUID)

    include(FindPackageHandleStandardArgs)
    FIND_PACKAGE_HANDLE_STANDARD_ARGS(UUID DEFAULT_MSG UUID_LIBRARIES UUID_INCLUDE_DIRS)
    mark_as_advanced(UUID_LIBRARIES UUID_INCLUDE_DIRS)
ENDIF (NOT UUID_INCLUDE_DIRS STREQUAL UUID_INCLUDE_DIRS-NOTFOUND AND NOT UUID_LIBRARIES STREQUAL UUID_LIBRARIES-NOTFOUND)

################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Please refer to the README for information about making permanent changes.  #
################################################################################