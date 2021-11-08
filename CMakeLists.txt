cmake_minimum_required(VERSION 3.0.0)
project(TrabalhoMetodos01 VERSION 1.0)

add_subdirectory(include)
add_executable(${PROJECT_NAME} main.cc)

target_include_directories(${PROJECT_NAME} PRIVATE include)
target_link_libraries(${PROJECT_NAME} OurInclude)