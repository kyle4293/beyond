#ifndef GREETER_H
#define GREETER_H

#include <string>

class Greeter {
public:
    // 생성자에 인삿말의 대상자(name) 지정
    explicit Greeter(const std::string& name);
    
    // 인삿말을 출력
    void greet() const;

private:
    std::string name_;
};

#endif // GREETER_H
