project(modules_test)

include(Coverage)
include(Warnings)

add_executable(${PROJECT_NAME} "")

target_sources(${PROJECT_NAME} PRIVATE
    main.cpp
)

add_coverage(${PROJECT_NAME} PRIVATE)
add_warnings_as_errors(${PROJECT_NAME} PRIVATE)

include(AddGTest)
add_gtest_executable(gtest_TEST gtest_TEST.cpp "")
