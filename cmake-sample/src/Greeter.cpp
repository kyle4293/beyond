#include "Greeter.h"
#include <iostream>

Greeter::Greeter(const std::string& name)
    : name_(name)
{}

void Greeter::greet() const {
    std::cout << "Hello, " << name_ << "!" << std::endl;
}
