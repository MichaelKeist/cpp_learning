//a lot of this code is very bad, i just wanted to learn how to iterate through list and what not :(
#include <iostream>
#include <list>
using namespace std;
int get_dim(list<list<int>> positions, int holder[2]){
	int height = 0;
	int width = 0;
	for(auto it = positions.begin(); it != positions.end(); it++){
		auto inner_it = (*it).begin();
		if(*inner_it > height){
			height = *inner_it;
		}
		advance(inner_it, 1);
		if(*inner_it > width){
			width = *inner_it;
		}
		holder[0] = height;
		holder[1] = width;
	}	
	return 0;
}
int check_board(list<list<int>> positions, int dims[2]){
	int xdiff = 0;
	int ydiff = 0;
	int count = 0;
	auto step_ahead = positions.begin();
	for(auto it = positions.begin(); count < (positions.size()); it++){
		cout << "debug";
		list<int> inner_list = *it;
		auto inner_it = inner_list.begin();
		int currx = *inner_it;
		advance(inner_it, 1);
		int curry = *inner_it;
		auto sample_it = positions.begin();
		count++;
		int counter2 = 0;
		for(int i = 0; i < positions.size() - count; i++){
			auto sample_it = positions.begin();
			advance(sample_it, counter2 + count);
			list<int> current_position = *sample_it;
			auto xy_it = current_position.begin();
			int sample_x = *xy_it;
			advance(xy_it, 1);
			int sample_y = *xy_it;
			xdiff = currx - sample_x;
			ydiff = curry - sample_y;
			cout << "queen1 x: ";
			cout << currx;
			cout << "  queen1 y: ";
			cout << curry;
			cout << "\n";
			cout << "queen2 x: ";
			cout << sample_x;
			cout << "  queen1 y: ";
			cout << sample_y;
			cout << "\n";
			if(xdiff == 0 or ydiff == 0 or (xdiff == ydiff * -1) or (xdiff == ydiff)){
				return 0;
			}
			counter2++;
		}	
	}
	return 1;
}
int main(){
	list<list<int>> pos;
	list<int> select = {2,1};
	pos.push_back(select);
	select = {5,2};
	pos.push_back(select);
	select = {7,3};
	pos.push_back(select);
	select = {4,4};
	pos.push_back(select);
	select = {1,5};
	pos.push_back(select);
	select = {8,6};
	pos.push_back(select);
	select = {6,7};
	pos.push_back(select);
	select = {3,8};
	pos.push_back(select);
	int dims[2] = {0,0};
	get_dim(pos, dims);
	if(check_board(pos, dims) == 1){
		cout << "The queens are safe!";
		cout << "\n";
	}else{
		cout << "The queens are not safe!";
		cout << "\n";
	}
	return 0;
}
