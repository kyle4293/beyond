cmake_minimum_required(VERSION 3.10)

# 프로젝트명과 버전, 언어 지정
project(MyProject VERSION 1.0 LANGUAGES CXX)

# C++17 사용
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# include 디렉토리 전역 추가
include_directories(${CMAKE_SOURCE_DIR}/include)

# 서브 디렉토리 처리
add_subdirectory(src)

enable_testing()
add_subdirectory(tests)
