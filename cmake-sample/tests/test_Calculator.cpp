#include "Calculator.h"
#include <cassert>
#include <iostream>

int main() {
    Calculator calc;

    assert(calc.add(0, 0) == 0);
    assert(calc.add(1, 2) == 3);
    assert(calc.add(-1, 1) == 0);
    assert(calc.add(100, 200) == 300);

    std::cout << "All Calculator tests passed!" << std::endl;
    return 0;
}
