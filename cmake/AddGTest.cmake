find_package(GTest REQUIRED)

function (add_gtest_executable TARGET SRCS LIBS)

    add_executable(${TARGET} "")
    target_sources(${TARGET} PRIVATE ${SRCS})

    set_target_properties(${TARGET} PROPERTIES
        RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/test"
    )

    target_link_libraries(${TARGET} PRIVATE
        ${LIBS}
        GTest::gtest
        GTest::gtest_main
    )

    add_test(NAME ${TARGET} COMMAND ${TARGET})
endfunction()
