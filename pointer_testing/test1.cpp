#include <iostream>
using namespace std;
int main(){
	int* x = new int;
	*x = 3;
	cout << x;
	cout << "\n";
	delete x;
}
