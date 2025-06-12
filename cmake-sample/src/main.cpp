#include "Greeter.h"
#include "Calculator.h"
#include <iostream>

int main() {
    Greeter greeter("World");
    greeter.greet();  // "Hello, World!"

    Calculator calc;
    int result = calc.add(3, 4);
    std::cout << "3 + 4 = " << result << std::endl;

    return 0;
}
