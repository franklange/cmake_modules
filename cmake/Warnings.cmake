function(add_warnings TARGET SCOPE)

if(CMAKE_SYSTEM_NAME STREQUAL Linux)
    target_compile_options(${TARGET} ${SCOPE}
        -Wall
        -Wextra
        -Wpedantic
    )
endif()

if(CMAKE_SYSTEM_NAME STREQUAL Darwin)
    target_compile_options(${TARGET} ${SCOPE}
        -Wall
        -Wextra
    )
endif()

if(CMAKE_SYSTEM_NAME STREQUAL Windows)
    target_compile_options(${TARGET} ${SCOPE}
        /W4
    )
endif()

endfunction()


function(add_warnings_as_errors TARGET SCOPE)

add_warnings(${TARGET} ${SCOPE})

if(CMAKE_SYSTEM_NAME STREQUAL Linux)
    target_compile_options(${TARGET} ${SCOPE}
        -Werror
    )
endif()

if(CMAKE_SYSTEM_NAME STREQUAL Darwin)
    target_compile_options(${TARGET} ${SCOPE}
        -Werror
    )
endif()

if(CMAKE_SYSTEM_NAME STREQUAL Windows)
    target_compile_options(${TARGET} ${SCOPE}
        /WX
    )
endif()

endfunction()