FIND_PATH(LIBMAGIC_INCLUDE_DIR magic.h)

FIND_LIBRARY(LIBMAGIC_LIBRARY NAMES magic)

IF (LIBMAGIC_INCLUDE_DIR AND LIBMAGIC_LIBRARY)
    SET(LIBMAGIC_FOUND TRUE)
ENDIF (LIBMAGIC_INCLUDE_DIR AND LIBMAGIC_LIBRARY)

IF (LIBMAGIC_FOUND)
    IF (NOT LibMagic_FIND_QUIETLY)
        MESSAGE(STATUS "Found libmagic library:  ${LIBMAGIC_LIBRARY}")
        MESSAGE(STATUS "Found libmagic includes: ${LIBMAGIC_INCLUDE_DIR}")
    ENDIF (NOT LibMagic_FIND_QUIETLY)
ELSE (LIBMAGIC_FOUND)
    IF (LibMagic_FIND_REQUIRED)
        MESSAGE(STATUS "libmagic development package cannot be found.")
        MESSAGE(STATUS "In Debian/Ubuntu, it may be called: libmagic-dev")
        MESSAGE(FATAL_ERROR "Could not find libmagic")
    ENDIF (LibMagic_FIND_REQUIRED)
ENDIF (LIBMAGIC_FOUND)
