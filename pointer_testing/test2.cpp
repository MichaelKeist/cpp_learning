#include <iostream>
using namespace std;
int main(){
	int* x = new int;
	*x = 3;
	int* y = x;
	*x += 1;
	cout << *y;
	cout << "\n";
	return 0;
}
