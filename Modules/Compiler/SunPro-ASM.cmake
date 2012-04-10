set(CMAKE_ASM_SOURCE_FILE_EXTENSIONS s )

SET(CMAKE_ASM_VERBOSE_FLAG "-#")

SET(CMAKE_SHARED_LIBRARY_ASM_FLAGS "-KPIC")
SET(CMAKE_SHARED_LIBRARY_CREATE_ASM_FLAGS "-G")
SET(CMAKE_SHARED_LIBRARY_RUNTIME_ASM_FLAG "-R")
SET(CMAKE_SHARED_LIBRARY_RUNTIME_ASM_FLAG_SEP ":")
SET(CMAKE_SHARED_LIBRARY_SONAME_ASM_FLAG "-h")

SET(CMAKE_ASM_FLAGS_INIT "")
SET(CMAKE_ASM_FLAGS_DEBUG_INIT "-g")
SET(CMAKE_ASM_FLAGS_MINSIZEREL_INIT "-xO2 -xspace -DNDEBUG")
SET(CMAKE_ASM_FLAGS_RELEASE_INIT "-xO3 -DNDEBUG")
SET(CMAKE_ASM_FLAGS_RELWITHDEBINFO_INIT "-g -xO2")

# Initialize ASM link type selection flags.  These flags are used when
# building a shared library, shared module, or executable that links
# to other libraries to select whether to use the static or shared
# versions of the libraries.
FOREACH(type SHARED_LIBRARY SHARED_MODULE EXE)
  SET(CMAKE_${type}_LINK_STATIC_ASM_FLAGS "-Bstatic")
  SET(CMAKE_${type}_LINK_DYNAMIC_ASM_FLAGS "-Bdynamic")
ENDFOREACH(type)
