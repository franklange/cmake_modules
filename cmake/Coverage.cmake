function(add_coverage TARGET SCOPE)

if(NOT CMAKE_SYSTEM_NAME STREQUAL Linux)
    message(FATAL_ERROR "Coverage only works on Unix systems")
endif()

target_compile_options(${TARGET} ${SCOPE}
    -fprofile-arcs
    -ftest-coverage
    -fPIC
    -O0
)

target_link_libraries(${TARGET} ${SCOPE}
    gcov
)

endfunction()