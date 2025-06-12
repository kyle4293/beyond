# 라이브러리 생성: Greeter.cpp, Calculator.cpp 포함
add_library(MyLib STATIC
    Greeter.cpp
    Calculator.cpp
)

# include 디렉토리 공개(PUBLIC)
target_include_directories(MyLib PUBLIC
    ${CMAKE_SOURCE_DIR}/include
)

# 실행 파일 생성: main.cpp
add_executable(MyApp
    main.cpp
)

# MyApp이 MyLib에 의존
target_link_libraries(MyApp PRIVATE MyLib)
