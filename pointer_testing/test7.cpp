#include <vector>
#include <iostream>
using namespace std;
int main(){
	vector<int> tester{1,2,3,4,5};
	for(vector<int>::iterator it = tester.begin(); it != tester.end(); it++){
		cout << *it;
	}
	cout << *tester.end();
	return 0;
}
