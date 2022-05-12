#include <iostream>
using namespace std;
int main(){
	int x = 3;
	int y = x;
	bool z = &x == &y;
	cout << z;
	cout << "\n";
	x += 1;
	cout << y;
	cout << "\n";
}
