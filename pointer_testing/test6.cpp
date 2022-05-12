#include <iostream>
using namespace std;
int main(){
	int tester[5] = {0,1,2,3,4};
	int x = tester[3];
	tester[3] = 100;
	cout << x;
	return 0;
}
