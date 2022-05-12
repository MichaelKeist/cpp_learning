#include <iostream>
#include <list>
using namespace std;
int get_dim(list<list<int>> positions, int holder[2]){
	int height;
	int width;
	for(auto it = positions.begin(); it != positions.end(); it++){
		auto inner_it = (*it).begin();
		if(*inner_it > height){
			cout << "assigning val: ";
			cout << *inner_it;
			cout << "\n";
			height = *inner_it;
			cout << "assigned val: ";
			cout << height;
			cout << "\n";
		}
		advance(inner_it, 1);
		if(*inner_it > width){
			width = *inner_it;
		}
		holder[0] = height;
		cout << "array val: ";
		cout << holder[0];
		cout << "\n";
		holder[1] = width;
	}	
	return 0;
}
int check_board(list<int[2]> positions){
	for(auto it = positions.begin(); it != positions.end(); it++){
		cout << "test";
	}
	return 0;
}
int main(){
	list<list<int>> pos;
	list<int> select = {322,233};
	pos.push_back(select);
	int tester[2] = {0,0};
	get_dim(pos, tester);
	//for(int i = 0; i < sizeof(tester)/sizeof(tester[0]); i++){
	//	cout << *tester[0];
	//}
	return 0;
}
