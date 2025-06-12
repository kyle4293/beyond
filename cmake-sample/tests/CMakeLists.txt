# 테스트용 실행 파일
add_executable(TestCalculator
    test_Calculator.cpp
)

# MyLib 연결
target_link_libraries(TestCalculator PRIVATE MyLib)

# 테스트 등록
add_test(NAME CalculatorTest
         COMMAND TestCalculator)
