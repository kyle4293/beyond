#include <iostream>

using namespace std;

int main() {
    int a; int b;
    cin >> a >> b;
    while(a<b) {
        a--;
        cout << a << " " << b << "\n";        
    }

    return 0;
}